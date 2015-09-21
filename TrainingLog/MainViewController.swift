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
    
    let trainingTitle: NSArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainViewC.delegate = self
        mainViewC.dataSource = self
        
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
    
    
    
}