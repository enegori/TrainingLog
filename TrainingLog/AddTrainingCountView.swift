//
//  AddTrainingCountView.swift
//  TrainingLog
//
//  Created by Ryota Kimura on 2015/09/12.
//  Copyright (c) 2015年 kimu. All rights reserved.
//

import Foundation
import UIKit

class AddTrainingCountView: UIViewController {
    
    // 今日の回数
    @IBOutlet weak var numericValue: UITextField!
    
    var trainingId: String?
    
    //Modal閉じる用のメソッド
    func closeBtn(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
    }
    
    func registerBtn(){
        var trainingDateT = TrainingDateT.MR_createEntity()
        trainingDateT.dateInfo = NSDate()
        trainingDateT.numericValue = Int(numericValue.text!)
        trainingDateT.trainingID = trainingId
        trainingDateT.managedObjectContext?.MR_saveToPersistentStoreAndWait()
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}