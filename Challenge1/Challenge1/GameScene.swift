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
    var button3:UIButton!
    var button4:UIButton!
    
    let CartScene = CartSystem(size: CGSize(width: 2048, height: 1536))
    
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

    
        // button feacture
        button1 = UIButton()
        button1.frame = CGRect(x: 700, y: 150, width: 120, height: size.height / 15)
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
        button2.frame = CGRect(x: 500, y: 150, width: 120, height: size.height / 15)
            
        button2.setTitle("tables", for: UIControl.State.normal)
        button2.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button2.backgroundColor = .darkGray
        button2.layer.borderWidth = 5
        button2.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        button2.addTarget(self, action: #selector(ChangeTablesSence), for: UIControl.Event.touchUpInside)
        view.addSubview(button2)
        
        // button for cart
        button3 = UIButton()
        button3.frame = CGRect(x: 300, y: 150, width: 120, height: size.height / 15)
                
        button3.setTitle("Cart", for: UIControl.State.normal)
        button3.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button3.backgroundColor = .darkGray
        button3.layer.borderWidth = 5
        button3.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        button3.addTarget(self, action: #selector(ChangeCartScene), for: UIControl.Event.touchUpInside)
            view.addSubview(button3)
        
        
        // button for cart
        button4 = UIButton()
        button4.frame = CGRect(x: 100, y: 150, width: 120, height: size.height / 15)
                
        button4.setTitle("Buy item", for: UIControl.State.normal)
        button4.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button4.backgroundColor = .darkGray
        button4.layer.borderWidth = 5
        button4.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        button4.addTarget(self, action: #selector(AddToTotal), for: UIControl.Event.touchUpInside)
            view.addSubview(button4)
        
    }
 
    
    @objc func ChangeChairSence(){
        button1.removeFromSuperview()
        button1 = nil
        button2.removeFromSuperview()
        button2 = nil
        
        // temp button 3
        button3.removeFromSuperview()
        button3 = nil
  
        
        button4.removeFromSuperview()
        button4 = nil
        
        let skView = self.view!
        let Scene = ChairScene(size: CGSize(width: 2048, height: 1536))
        Scene.scaleMode = .aspectFill
        skView.presentScene(Scene)
    }
    
    @objc func ChangeTablesSence(){
            button1.removeFromSuperview()
            button1 = nil
            button2.removeFromSuperview()
            button2 = nil
        
            // temp button 3
            button3.removeFromSuperview()
            button3 = nil
        
           button4.removeFromSuperview()
           button4 = nil
            
           let skView = self.view!
           let Scene = TableScene(size: CGSize(width: 2048, height: 1536))
           Scene.scaleMode = .aspectFill
           skView.presentScene(Scene)
        
      }
    
    
    @objc func ChangeCartScene(){
          button1.removeFromSuperview()
          button1 = nil
          button2.removeFromSuperview()
          button2 = nil
        
          // temp button 3
          button3.removeFromSuperview()
          button3 = nil
      
         button4.removeFromSuperview()
         button4 = nil
        
         let skView = self.view!
         CartScene.scaleMode = .aspectFill
         skView.presentScene(CartScene)
    }
    
    
    @objc func AddToTotal(){
        CartScene.AddTotal(total: 5, info: "Chair\n")
        
    }
}

