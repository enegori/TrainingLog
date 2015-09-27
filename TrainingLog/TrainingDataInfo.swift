//
//  TrainingDataList.swift
//  TrainingLog
//
//  Created by Ryota Kimura on 2015/09/27.
//  Copyright © 2015年 kimu. All rights reserved.
//

import Foundation
import UIKit

class TrainingDataInfo {
    var trainingName: String
    var imageName: String
    var numericValue: Float
    var unitID: String
    
    init(data:(String,String,Float,String)){
        trainingName = data.0
        imageName = data.1
        numericValue = data.2
        unitID = data.3
    }
    
}