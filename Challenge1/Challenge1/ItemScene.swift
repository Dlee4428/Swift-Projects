//
//  ItemScene.swift
//  Challenge1
//
//  Created by Julie De Bourbon on 2020-02-19.
//  Copyright © 2020 Dong Hyeong Lee. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit

class ItemScene: SKScene {

    var backButton:UIButton!
    var ARButton:UIButton!
    var cartButton:UIButton!
    var visitCartButton:UIButton!
    var itemInfoText:UITextView = UITextView();
    
    //Text("Writing in text")
    //.frame(width: 100)
        
    override func didMove(to view: SKView) {//didViewLoad
        
        // Background Sprite
        let background = SKSpriteNode(imageNamed: "cellBackground")
        addChild(background)
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        background.zPosition = -1
       
        //  backButton Sprite, then button
        let backBSprite = SKSpriteNode(imageNamed:"sampleArrow")
        background.addChild(backBSprite)
        backBSprite.name = "backButton"
        backBSprite.setScale(0.25)
        backBSprite.position = CGPoint(x: -225 , y: -600)
        
        backButton = UIButton()
        backButton.frame = CGRect(x: 10 , y: 750, width: 120, height: size.height / 15)
        backButton.addTarget(self, action: #selector(ChangeChairSence), for: UIControl.Event.touchUpInside)
        view.addSubview(backButton)
        
        //AR Sprite then Button
        let ARSprite = SKSpriteNode(imageNamed:"ARButton")
        background.addChild(ARSprite)
        ARSprite.name = "ARButton"
        ARSprite.setScale(0.7)
        ARSprite.position = CGPoint(x: 190 , y: -600)
               
        ARButton = UIButton()
        ARButton.frame = CGRect(x: 230, y: 760, width: 175, height: size.height / 20)
        
        ///CHANGE TO AR SCENE NOT COMPLETE >>
        ARButton.addTarget(self, action: #selector(EnterAR), for: UIControl.Event.touchUpInside)
        view.addSubview(ARButton)
        
        //Add to Cart Sprite then Button
        let CartSprite = SKSpriteNode(imageNamed:"CartButton")
        background.addChild(CartSprite)
        CartSprite.name = "CartButton"
        CartSprite.setScale(0.7)
        CartSprite.position = CGPoint(x: 3 , y: -410)
               
        cartButton = UIButton()
        cartButton.frame = CGRect(x: 120, y: 650, width: 175, height: size.height / 20)
        
        ///CHANGE TO ADD CART NOT COMPLETE >>
        cartButton.addTarget(self, action: #selector(AddToCart), for: UIControl.Event.touchUpInside)
        view.addSubview(cartButton)
        
        //View Cart Sprite then Button
        let visitCartSprite = SKSpriteNode(imageNamed:"finishedCart")
        background.addChild(visitCartSprite)
        visitCartSprite.name = "visitCartButton"
        visitCartSprite.setScale(0.2)
        visitCartSprite.position = CGPoint(x: 290 , y: 660)
               
        visitCartButton = UIButton()
        visitCartButton.frame = CGRect(x: 350, y: 40, width: 50, height: size.height / 30)
        //CHANGE TO VISIT CART SCENE NOT COMPLETE
        visitCartButton.addTarget(self, action: #selector(ChangeCartScene), for: UIControl.Event.touchUpInside)
        view.addSubview(visitCartButton)
        
        //  Item Sprite
        let itemSprite = SKSpriteNode(imageNamed:"Chair_Sprite")//change to it generic
        background.addChild(itemSprite)
        itemSprite.name = "chairSprite"
        itemSprite.setScale(0.7)
        itemSprite.position = CGPoint(x: 0 , y: 350)
        
        //TextField
        itemInfoText.isEditable = false
        itemInfoText.frame = CGRect(x: 0, y: 0, width: 300, height: 175)
        itemInfoText.center = CGPoint(x: view.bounds.width / 2, y: 550)
        itemInfoText.backgroundColor = UIColor.white
      
        //itemInfoText.borderStyle = UITextField.BorderStyle.line
        
        itemInfoText.text = "Name, Price, Colour, placeholders"
        itemInfoText.textColor = UIColor.black
        itemInfoText.font = UIFont.systemFont(ofSize: 17)
        view.addSubview(itemInfoText)
        
        
        
        
    }
 
    //backButton find last scene. Need data storge
    @objc func ChangeChairSence(){
       
        backButton.removeFromSuperview()
        backButton = nil
        ARButton.removeFromSuperview()
        ARButton = nil
        cartButton.removeFromSuperview()
        cartButton = nil
        visitCartButton.removeFromSuperview()
        visitCartButton = nil
        itemInfoText.removeFromSuperview()
        
       
        let skView = self.view!
        let Scene = ChairScene(size: CGSize(width: 2048, height: 1536))
        Scene.scaleMode = .aspectFill
        skView.presentScene(Scene)
    }
    
    @objc func EnterAR(){
           
          
    }
    
    @objc func AddToCart(){
           
          
    }
    
    @objc func ChangeCartScene(){
           
          
    }
    
    
    
  
}


