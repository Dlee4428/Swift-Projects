//
//  GameViewController.swift
//  Challenge1
//
//  Created by Dong Hyeong Lee on 2020-01-07.
//  Copyright © 2020 Dong Hyeong Lee. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let scene = GameScene(size: CGSize(width: 2048, height: 1536))
        let scene = ItemScene(size: CGSize(width: 2048, height: 1536))
        //let scene = ChairScene(size: CGSize(width: 2048, height: 1536))
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
