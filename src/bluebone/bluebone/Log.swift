//
//  Log.swift
//  bluebone
//
//  Created by Aditya Srinivasan on 07/01/17.
//  Copyright © 2017 Aditya Srinivasan. All rights reserved.
//

import UIKit

class Log {
    
    var date: Date!
    var mood: Mood!
    var activities: [Activity]!
    
    init(date: Date!, mood: Mood!, activities: [Activity]!) {
        self.date = date
        self.mood = mood
        self.activities = activities
    }
    
    static func createLogs() -> [Log] {
        return [
            Log(date: Date(timeIntervalSince1970: 0), mood: .great, activities: [Activity(title: "Flat bench press", metric: .setsAndReps, duration: 0, sets: 3, reps: 8, weight: 160),
                                                         Activity(title: "Incline bench press", metric: .setsAndReps, duration: 0, sets: 4, reps: 8, weight: 130)]),
            Log(date: Date(timeIntervalSince1970: 86400000), mood: .good, activities: [Activity(title: "Deadlifts", metric: .setsAndReps, duration: 0, sets: 5, reps: 5, weight: 315),
                                                         Activity(title: "Pull ups", metric: .setsAndReps, duration: 0, sets: 4, reps: 8, weight: 180)]),
            Log(date: Date(timeIntervalSince1970: 172800000), mood: .bad, activities: [Activity(title: "Squats", metric: .setsAndReps, duration: 0, sets: 5, reps: 5, weight: 315),
                                                         Activity(title: "Leg press", metric: .setsAndReps, duration: 0, sets: 4, reps: 8, weight: 600)])
        ]
    }
    
}
