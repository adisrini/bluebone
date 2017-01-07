//
//  InterestCollectionViewCell.swift
//  bluebone
//
//  Created by Aditya Srinivasan on 07/01/17.
//  Copyright © 2017 Aditya Srinivasan. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Public API
    var interest: Interest! {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
        interestTitleLabel.text = interest.title
        featuredImageView.image = interest.featuredImage
    }
    
    
    // MARK: - Private
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var interestTitleLabel: UILabel!
    
}
