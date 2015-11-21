//
//  Samwise development
//
//  Created by Alexander Hipp on 21/11/15.
//  Copyright (c) 2015 LonelyGoldfish. All rights reserved.
//

import Foundation
import UIKit

struct World {
    
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    var artists: [String] = []
    var backgroundColor: UIColor = UIColor.clearColor()
    
    init(index: Int) {
        let musicLibrary = MusicLibrary().library
        let worldDictionary = musicLibrary[index]
        
        title = worldDictionary["title"] as! String!
        description = worldDictionary["description"] as! String!
        
        let iconName = worldDictionary["icon"] as! String!
        icon = UIImage(named: iconName)
        
        let largeIconName = worldDictionary["largeIcon"] as! String!
        largeIcon = UIImage(named: largeIconName)
        
        artists += worldDictionary["artists"] as! [String]
        
        let colorsDictionary = worldDictionary["backgroundColor"] as! [String:CGFloat]
        backgroundColor = rgbColorFromDictionary(colorsDictionary)
        
    }
    
    func rgbColorFromDictionary(colorDictionary: [String:CGFloat]) -> UIColor {
        let red = colorDictionary["red"]!
        let green = colorDictionary["green"]!
        let blue = colorDictionary["blue"]!
        let alpha = colorDictionary["alpha"]!
        
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
}