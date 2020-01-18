//
//  GameScene.swift
//  Challenge1
//
//  Created by Dong Hyeong Lee on 2020-01-07.
//  Copyright © 2020 Dong Hyeong Lee. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        // Background features
        backgroundColor = SKColor.black
        let background = SKSpriteNode(imageNamed: "background1")
        addChild(background)
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        
        // Challenge 1: Zombie position
        // Player(Zombie) Features
        let zombie = SKSpriteNode(imageNamed: "zombie1")
        zombie.position = CGPoint(x: -500, y: -300)
        
        // place the background behind other stuff
        background.zPosition = -1
        
        // place the zombie in front
        zombie.zPosition = 1
        
        
        // Challenge 2: Scale up to 2x
        background.setScale(0.8)
        zombie.setScale(2.0)
        
        // Challenge 3: Position value change if you make zombie a child of background
        background.addChild(zombie)
    }
}
