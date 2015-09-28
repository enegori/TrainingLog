//
//  CustomCell.swift
//  TrainingLog
//
//  Created by Ryota Kimura on 2015/09/21.
//  Copyright © 2015年 kimu. All rights reserved.
//

import Foundation
import UIKit

/**
TableViewのCustomCell class
*/
class CustomCell: UITableViewCell {
    
    @IBOutlet weak var trainingName: UILabel!
    @IBOutlet weak var totalCount: UILabel!
    @IBOutlet weak var backImg: UIImageView!
    @IBOutlet weak var unitName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    /*
    func setCell(trainingData:TrainingData){
        self.trainingName.text = trainingData.trName as String
        self.totalCount.text = String(trainingData.trCount)
        self.backImg.image = trainingData.trBackImg
    }
    */
}


class TrainingData: NSObject {
    var trName: String
    var trCount: Int32
    var trBackImg: UIImage
    var uniName: String
    
    init(name: String, desc: String, count: Int32, img: UIImage, uni: String){
        self.trName = name
        self.trCount = count
        self.trBackImg = img
        self.uniName = uni
    }
}
