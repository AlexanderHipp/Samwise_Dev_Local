//
//  Samwise development
//
//  Created by Alexander Hipp on 21/11/15.
//  Copyright (c) 2015 LonelyGoldfish. All rights reserved.
//

import UIKit

class WorldMasterViewController: UIViewController {

    var worldArray: [UIImageView] = []
    @IBOutlet weak var worldImageView0: UIImageView!
    @IBOutlet weak var worldImageView1: UIImageView!
    @IBOutlet weak var worldImageView2: UIImageView!
    @IBOutlet weak var worldImageView3: UIImageView!
    @IBOutlet weak var worldImageView4: UIImageView!
    @IBOutlet weak var worldImageView5: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        worldArray += [worldImageView0, worldImageView1, worldImageView2, worldImageView3, worldImageView4, worldImageView5]
        
        for index in 0..<worldArray.count {
            let world = World(index: index)
            let worldImageView = worldArray[index]
            
            worldImageView.image = world.icon
            worldImageView.backgroundColor = world.backgroundColor
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showWorldDetailSegue" {
            
            let worldImageView = sender!.view as! UIImageView
            if let index = worldArray.indexOf(worldImageView) {
                let worldDetailController = segue.destinationViewController as! WorldDetailViewController
                worldDetailController.world = World(index: index)
            }
            
            
        }
    }

    @IBAction func showWorldDetail(sender: AnyObject) {
        performSegueWithIdentifier("showWorldDetailSegue", sender: sender)
    }

}

