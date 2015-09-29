//
//  MainViewController.swift
//  TrainingLog
//
//  Created by Ryota Kimura on 2015/08/15.
//  Copyright (c) 2015年 kimu. All rights reserved.
//

import UIKit
import Foundation

/**
TrainingMenu一覧のclass
*/
class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var mainViewC: UITableView!
    var trainingInfoList:[TrainingDataInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainViewC.delegate = self
        mainViewC.dataSource = self
        
        getList()
        
        //self.mainViewC.registerNib(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        
        // Table Viewの背景色
        mainViewC.backgroundColor = UIColor(red: 0.169, green: 0.212, blue: 0.275, alpha: 1)
        
        // Viewの背景色
        self.view.backgroundColor = UIColor(red: 0.169, green: 0.212, blue: 0.275, alpha: 1)
        
        // NavigationBarの生成
        let navBar: UINavigationBar = UINavigationBar()
        navBar.sizeToFit()
        navBar.frame = CGRectMake(navBar.frame.origin.x, navBar.frame.origin.y, navBar.frame.size.width, navBar.frame.size.height + 20)
        if (floor(NSFoundationVersionNumber) > NSFoundationVersionNumber_iOS_6_1){
            navBar.barTintColor = nil
        }
        
        let navTitle: UINavigationItem = UINavigationItem(title: "Training Menu")
        navBar.pushNavigationItem(navTitle, animated: true)
        self.view.addSubview(navBar)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // cellが選択された際に呼び出されるdelegateメソッド
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Num: \(indexPath.row)")
//        print("Value: \(trainingInfoM[indexPath.row])")
    }
    
    // cellの総数を返すメソッド
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trainingInfoList.count
    }
    
    // cellに値を設定するデータベースメソッド
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // 再利用するcellの取得
        let cell: CustomCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomCell
        // cellに値を設定する
        cell.backgroundColor = UIColor(red: 0.169, green: 0.212, blue: 0.275, alpha: 1)
        cell.trainingName.text = trainingInfoList[indexPath.row].trainingName
//           cell.backImg.image = trainingInfoList[indexPath.row].imageName as? UIImage
        cell.totalCount.text = String(trainingInfoList[indexPath.row].numericValue)
        cell.unitName.text = trainingInfoList[indexPath.row].unitName
        return cell
    }
    
    /**
    マスタデータを配列に格納し、各種値を紐付けてTableViewに呼び出す準備をするメソッド
    */
    func getList(){
        let trainingDataByDate = TrainingDateT.MR_findAllSortedBy("dateInfo", ascending: true)
        // [trainingID: numValue]
        var dict = [String:Float]()
        /// 異なるdateInfoを持つ同じtrainingIDのnumValueを全て合算する
        for var i = 0; i < trainingDataByDate.count; i++ {
            let trainingRecord = trainingDataByDate[i]
            if dict[trainingRecord.trainingID] != nil {
                dict[trainingRecord.trainingID] = trainingRecord.numDataValue + dict[trainingRecord.trainingID]!
            } else {
                dict[trainingRecord.trainingID] = trainingRecord.numDataValue
            }
        }
        let keys: Array = Array(dict.keys)
        let values: Array = Array(dict.values)
        for var i = 0; i < keys.count; i++ {
            let trainingDataList = TrainingInfoM.MR_findFirstByAttribute("trainingID", withValue: keys[i])
            let tName = trainingDataList.trainingName
            let imgName = trainingDataList.imageName
            let numVal = values[i]
            let uniID = trainingDataList.unitID
            
            let unitSalvage = UnitInfoM.MR_findFirstByAttribute("unitID", withValue: uniID)
            let uniName = unitSalvage.unitName
            print(uniName)
            
            trainingInfoList.append(TrainingDataInfo(data:(tName,imgName,numVal,uniID,uniName)))
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showRegister"{
            let indexPath = mainViewC.indexPathForSelectedRow
            let trainingInfoT: AddTrainingCountView = segue.destinationViewController as! AddTrainingCountView
            trainingInfoT.trainingId = trainingInfoList[indexPath!.row] as? String
        }
    }
}