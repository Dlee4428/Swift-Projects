//
//  GameScene.swift
//  Challenge1
//
//  Created by Dong Hyeong Lee on 2020-01-07.
//  Copyright © 2020 Dong Hyeong Lee. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {

    var button1:UIButton!
    var button2:UIButton!
    override func didMove(to view: SKView) {
        
        // Background features
        backgroundColor = SKColor.black
        let background = SKSpriteNode(imageNamed: "background3")
        addChild(background)
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        //background.zRotation = 1.58
        background.zRotation = CGFloat.pi / 2
        background.zPosition = -1
        background.setScale(1.6)
        
        // text field feactures
       // let titleText = UITextView(frame: CGRect(x: 550, y: 100, width: 280, height: 80))
        //titleText.backgroundColor = .yellow
       // titleText.text = "Hello World"
       // titleText.textColor = .black
       // titleText.font = UIFont.systemFont(ofSize: 20.0)
       // titleText.textContainer.maximumNumberOfLines = 1
        //titleText.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        //view.addSubview(titleText)
        
        
        
        // button feacture
        button1 = UIButton()
        button1.frame = CGRect(x: 500, y: 150, width: 120, height: size.height / 15)
        //button1.center = view.center
        button1.setTitle("Chairs", for: UIControl.State.normal)
        button1.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button1.backgroundColor = .darkGray
        button1.layer.borderWidth = 5
        button1.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        button1.addTarget(self, action: #selector(ChangeChairSence), for: UIControl.Event.touchUpInside)
        view.addSubview(button1)
        
        
        // button tables button
        button2 = UIButton()
        button2.frame = CGRect(x: 300, y: 150, width: 120, height: size.height / 15)
            
        button2.setTitle("tables", for: UIControl.State.normal)
        button2.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button2.backgroundColor = .darkGray
        button2.layer.borderWidth = 5
        button2.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        button2.addTarget(self, action: #selector(ChangeTablesSence), for: UIControl.Event.touchUpInside)
        view.addSubview(button2)
        
    }
    
    @objc func ChangeChairSence(){
        button1.removeFromSuperview()
        button1 = nil
        button2.removeFromSuperview()
        button2 = nil
  
        let skView = self.view as! SKView
        let SceneChair = ChairScene(size: CGSize(width: 2048, height: 1536))
        SceneChair.scaleMode = .aspectFill
        skView.presentScene(SceneChair)
    }
    
    @objc func ChangeTablesSence(){
            button1.removeFromSuperview()
            button1 = nil
            button2.removeFromSuperview()
            button2 = nil
        
           let skView = self.view as! SKView
           let SceneChair = TableScene(size: CGSize(width: 2048, height: 1536))
           SceneChair.scaleMode = .aspectFill
           skView.presentScene(SceneChair)
      }
}

