//
//  IntroDetailViewController.swift
//  Samwise_Dev
//
//  Created by Alexander Hipp on 22/11/15.
//  Copyright © 2015 Treehouse. All rights reserved.
//


import UIKit

class IntroDetailViewController: UIViewController {
    
    var intro = World(index: 0)
    @IBOutlet weak var worldCoverImage: UIImageView!
    @IBOutlet weak var worldTitle: UILabel!
    @IBOutlet weak var worldDescription: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            
        worldCoverImage.image = intro.largeIcon
        worldCoverImage.backgroundColor = intro.backgroundColor
        worldTitle.text = intro.title
        worldDescription.text = intro.description
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    
    
}
