//
//  ItemScreen.swift
//  Challenge1
//
//  Created by Julie De Bourbon on 2020-02-18.
//  Copyright © 2020 Dong Hyeong Lee. All rights reserved.
//

import Foundation
import SpriteKit

class ItemScreen: SKScene {

    var backButton:UIButton!
    var ARButton:UIButton!
    var addToCartButton:UIButton!
    var goToCart:UIButton!
    var itemPicture:Sprite(itemPicture)
  
    
    override func didMove(to view: SKView) {
        
      
    }
    
    @objc func ChangeGameScene(){
          buttonHome.removeFromSuperview()
          buttonHome = nil
          
          let skView = self.view!
          let Scene = GameScene(size: CGSize(width: 2048, height: 1536))
          Scene.scaleMode = .aspectFill
          skView.presentScene(Scene)
    }

}
