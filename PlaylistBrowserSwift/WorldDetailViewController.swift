//
//  Samwise development
//
//  Created by Alexander Hipp on 21/11/15.
//  Copyright (c) 2015 LonelyGoldfish. All rights reserved.
//

import UIKit

class WorldDetailViewController: UIViewController {

    var world: World?
    @IBOutlet weak var worldCoverImage: UIImageView!
    @IBOutlet weak var worldTitle: UILabel!
    @IBOutlet weak var worldDescription: UILabel!
    
    @IBOutlet weak var worldArtist0: UILabel!
    @IBOutlet weak var worldArtist1: UILabel!
    @IBOutlet weak var worldArtist2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if world != nil {
            worldCoverImage.image = world!.largeIcon
            worldCoverImage.backgroundColor = world!.backgroundColor
            worldTitle.text = world!.title
            worldDescription.text = world!.description
            
            worldArtist0.text = world!.artists[0]
            worldArtist1.text = world!.artists[1]
            worldArtist2.text = world!.artists[2]
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
