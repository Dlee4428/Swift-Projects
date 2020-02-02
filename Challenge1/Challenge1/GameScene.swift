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
        let background = SKSpriteNode(imageNamed: "background3")
        addChild(background)
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        background.zRotation = 1.58
        background.zPosition = -1
        background.setScale(1.6)
        
        let titleText = UITextView(frame: CGRect(x: 750.0, y: 10, width: 50, height: 300.0))
        
        
        titleText.backgroundColor = .yellow
        titleText.text = "Hello World"
        titleText.textColor = .black
        
        view.addSubview(titleText)
        
        
        // Challenge 1: Zombie position
        // Player(Zombie) Features
        //let zombie = SKSpriteNode(imageNamed: "zombie1")
       // zombie.position = CGPoint(x: -500, y: -300)
        
        // place the background behind other stuff
        
        
        // place the zombie in front
        //zombie.zPosition = 1
        
        
        // Challenge 2: Scale up to 2x
       
        //zombie.setScale(2.0)
        
        // Challenge 3: Position value change if you make zombie a child of background
        //background.addChild(zombie)
    }
}
