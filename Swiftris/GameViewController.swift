//
//  GameViewController.swift
//  Swiftris
//
//  Created by Adam Kaplan on 1/23/15.
//  Copyright (c) 2015 Adam Kaplan. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    var scene: GameScene!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // config view
        let skView = view as SKView
        skView.multipleTouchEnabled = false
        
        // create and config scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        // present scene
        skView.presentScene(scene)
    
    }
    
}
