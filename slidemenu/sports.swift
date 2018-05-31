//
//  sports.swift
//  slidemenu
//
//  Created by Eugene Liu on 5/30/18.
//  Copyright © 2018 Eugene Liu. All rights reserved.
//

import Foundation

class Sports
{
    var athleteName: String
    var position: String
    var team: String
    var image: String
    var country: String
    var description: String
    
    init(athleteName: String, position: String, team: String, image: String, country: String, description: String)
    {
        self.athleteName = athleteName
        self.position = position
        self.team = team
        self.image = image
        self.country = country
        self.description = description
    }
    
    convenience init()
    {
        self.init(athleteName: "", position: "", team: "", image: "", country: "", description: "")
    }
}
