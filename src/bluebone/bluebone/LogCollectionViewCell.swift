//
//  LogCollectionViewCell.swift
//  bluebone
//
//  Created by Aditya Srinivasan on 07/01/17.
//  Copyright © 2017 Aditya Srinivasan. All rights reserved.
//

import UIKit

class LogCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Public API
    var log: Log! {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
        logDateLabel.text = log.date.description
        logMoodLabel.text = log.mood.rawValue
    }
    
    
    // MARK: - Private
    @IBOutlet var logDateLabel: UILabel!
    @IBOutlet var logMoodLabel: UILabel!
    
}
