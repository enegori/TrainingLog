//
//  MainViewController.swift
//  TrainingLog
//
//  Created by Ryota Kimura on 2015/08/15.
//  Copyright (c) 2015年 kimu. All rights reserved.
//

import UIKit
import Foundation

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var mainViewC: UITableView!
    
    let trainingTitle: NSArray = ["1","2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainViewC.delegate = self
        mainViewC.dataSource = self
        
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
        print("Value: \(trainingTitle[indexPath.row])")
    }
    
    // cellの総数を返すメソッド
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trainingTitle.count
    }
    
    // cellに値を設定するデータベースメソッド
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // 再利用するcellの取得
        let cell: CustomCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomCell
        // cellに値を設定する
        cell.backgroundColor = UIColor(red: 0.169, green: 0.212, blue: 0.275, alpha: 1)
//        cell.textLabel!.text = "test"
        return cell
    }
}