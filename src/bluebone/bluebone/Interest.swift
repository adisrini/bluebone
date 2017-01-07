//
//  Interest.swift
//  bluebone
//
//  Created by Aditya Srinivasan on 07/01/17.
//  Copyright © 2017 Aditya Srinivasan. All rights reserved.
//

import UIKit

class Interest {
    
    var title = ""
    var description = ""
    var numberOfMembers = 0
    var numberOfPosts = 0
    var featuredImage: UIImage!
    
    init(title: String, description: String, featuredImage: UIImage!) {
        self.title = title
        self.description = description
        self.featuredImage = featuredImage
        numberOfMembers = 1
        numberOfPosts = 1
    }
    
    static func createInterests() -> [Interest] {
        return [
            Interest(title: "We Love Nature", description: "We love backpack and adventures! We walked to a nature valley yesterday and camped.", featuredImage: #imageLiteral(resourceName: "nature")),
            Interest(title: "Romance Stories", description: "Under the Parisian night we gazed at the Eiffel Tower.", featuredImage: #imageLiteral(resourceName: "paris")),
            Interest(title: "iOS Dev", description: "The life of a busy New York developer, it's hectic but fun.", featuredImage: #imageLiteral(resourceName: "new york")),
            Interest(title: "Arch", description: "The purple arch and water were mesmerizing. It's an experience like no other.", featuredImage: #imageLiteral(resourceName: "arch")),
            Interest(title: "Mac OSX", description: "This is the beautiful mountain Sierra featured by the Apple OS.", featuredImage: #imageLiteral(resourceName: "sierra")),
            Interest(title: "Gondola Ahoy", description: "These gondolas cut through the crystal blue water with such ease. It was a relaxing experience.", featuredImage: #imageLiteral(resourceName: "venice"))
        ]
    }
    
}
