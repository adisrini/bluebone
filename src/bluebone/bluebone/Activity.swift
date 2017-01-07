//
//  Activity.swift
//  bluebone
//
//  Created by Aditya Srinivasan on 07/01/17.
//  Copyright © 2017 Aditya Srinivasan. All rights reserved.
//

import UIKit

class Activity {
    
    var title = ""
    var metric: Metric!
    var duration = 0
    var sets = 0
    var reps = 0
    var weight = 0
    
    init(title: String, metric: Metric!, duration: Int, sets: Int, reps: Int, weight: Int) {
        self.title = title
        self.metric = metric
        self.duration = duration
        self.sets = sets
        self.reps = reps
        self.weight = weight
    }
    
    enum Metric {
        case time, setsAndReps
    }
}
