//
//  TrainingDataList.swift
//  TrainingLog
//
//  Created by Ryota Kimura on 2015/09/27.
//  Copyright © 2015年 kimu. All rights reserved.
//

import Foundation
import UIKit

/**
トレーニングデータをTableViewCellに追加するための値を持つclass
*/
class TrainingDataInfo {
    var trainingName: String
    var imageName: String
    var numericValue: Float
    var unitID: String
    var unitName: String
    
    init(data:(String,String,Float,String,String)){
        trainingName = data.0
        imageName = data.1
        numericValue = data.2
        unitID = data.3
        unitName = data.4
    }
}