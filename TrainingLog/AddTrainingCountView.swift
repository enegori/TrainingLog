//
//  AddTrainingCountView.swift
//  TrainingLog
//
//  Created by Ryota Kimura on 2015/09/12.
//  Copyright (c) 2015年 kimu. All rights reserved.
//

import Foundation
import UIKit

/**
トレーニング回数を追加するViewのclass
*/
class AddTrainingCountView: UIViewController, UITextFieldDelegate {
    
    // 今日の回数
    @IBOutlet weak var numericValue: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var tDate: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBAction func tapScreen(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    let todaysDate = NSDate()
    var trainingId: String?
    var txtActiveField: UITextField!
    
    //Modal閉じる用のメソッド
    func closeBtn(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numericValue.delegate = self
        
        // 日付の表示.
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.dateFormat = "yyyy/MM/dd"
        tDate.text = dateFormatter.stringFromDate(todaysDate)
        
        // NavigationBarの生成
        let navBar: UINavigationBar = UINavigationBar()
        navBar.sizeToFit()
        navBar.frame = CGRectMake(navBar.frame.origin.x, navBar.frame.origin.y, navBar.frame.size.width, navBar.frame.size.height + 20)
        if (floor(NSFoundationVersionNumber) > NSFoundationVersionNumber_iOS_6_1){
            navBar.barTintColor = nil
        }
        
        let navTitle: UINavigationItem = UINavigationItem(title: "回数の追加")
        let closeModal: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Stop, target: self, action: "closeBtn")
        navTitle.leftBarButtonItem = closeModal
        navTitle.rightBarButtonItem = UIBarButtonItem(title: "登録", style: .Plain, target: self, action: "registerBtn")
        navBar.pushNavigationItem(navTitle, animated: true)
        self.view.addSubview(navBar)
        
        // Textfieldの初期値
        numericValue.placeholder = "回数を入力"
        
    }
    
    override func viewWillAppear(animated: Bool) {
        //super.viewWillAppear(animated)
            let notification = NSNotificationCenter.defaultCenter()
            notification.addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
            notification.addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
            let notification = NSNotificationCenter.defaultCenter()
            notification.removeObserver(self)
            notification.removeObserver(self, name: UIKeyboardWillShowNotification, object: nil)
            notification.removeObserver(self, name: UIKeyboardWillHideNotification, object: nil)
    }
    
    func registerBtn(){
        if Float(numericValue.text!)! == 0 {
            print("0以外の値を入力してください")
        }else if let fValue:Float = Float(numericValue.text!){
            var trainingDateT = TrainingDateT.MR_createEntity()
            trainingDateT.dateInfo = NSDate()
            trainingDateT.numDataValue = Float(numericValue.text!)!
            trainingDateT.trainingID = trainingId
            trainingDateT.managedObjectContext?.MR_saveToPersistentStoreAndWait()
            self.dismissViewControllerAnimated(true, completion: nil)
        } else {
            print("正確な数値を入力してください")
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        numericValue.resignFirstResponder()
        return true
    }
    
    func textFieldShouldBeginEditing(textfield: UITextField) -> Bool{
        txtActiveField = textfield
        return true
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        // 最大入力文字数の制限
        let maxLength: Int = 6
        var tmpStr = textField.text as NSString!
        tmpStr = tmpStr.stringByReplacingCharactersInRange(range, withString: string)
        if tmpStr.length < maxLength {
            return true
        }
        print("入力可能な文字数を超えています")
        return false
    }
    
    func keyboardWillShow(notification: NSNotification?){
        // キーボード表示時の動作
        let userInfo = notification?.userInfo!
        let rect = (userInfo?[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue()
        let myBoundsSize: CGSize = UIScreen.mainScreen().bounds.size
        let txtLimit = txtActiveField.frame.origin.y + txtActiveField.frame.height + 30.0
        let kbdLimit = myBoundsSize.height - rect.size.height
        
        if txtLimit >= kbdLimit {
            scrollView.contentOffset.y = txtLimit - kbdLimit
        }
    }
    
    func keyboardWillHide(notification: NSNotification?){
        // キーボード消滅時の動作
        scrollView.contentOffset.y = 0
    }
    
}

// UITextFieldのコピペ防止メソッド
class HideMenuBar: UITextField{
    override func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool {
        UIMenuController.sharedMenuController().menuVisible = false
        return false
    }
}