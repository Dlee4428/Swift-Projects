//
//  CartSystem.swift
//  Challenge1
//
//  Created by Sarfaraz Syed on 2020-02-15.
//  Copyright © 2020 Dong Hyeong Lee. All rights reserved.
//

import Foundation
import SpriteKit

class CartSystem: SKScene {
    
    var Total = 0
    let TotalText = UITextView()
    let InfoText = UITextView()
    var cartInfo = ""
    
    override func didMove(to view: SKView) {
        
        backgroundColor = SKColor.white
  
         //titleText.text = "Hello World"
         TotalText.text = String(Total)
         TotalText.translatesAutoresizingMaskIntoConstraints = true
         TotalText.isScrollEnabled = false
         TotalText.sizeToFit()
         TotalText.textColor = .black
         TotalText.frame = CGRect(x: 150, y: 300, width: 280, height: 80)
         //titleText.font = UIFont.systemFont(ofSize: 20.0)
         //TotalText.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
         view.addSubview(TotalText)
        
      
        InfoText.text = cartInfo
        InfoText.translatesAutoresizingMaskIntoConstraints = true
        InfoText.isScrollEnabled = false
        InfoText.sizeToFit()
        InfoText.textColor = .black
        InfoText.frame = CGRect(x: 150, y: 500, width: 280, height: 80)
        //titleText.font = UIFont.systemFont(ofSize: 20.0)
        //InfoText.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        view.addSubview(InfoText)
        
   
    }
    
    func AddTotal( total: Int, info: String ){
         Total += total
         TotalText.text = String(Total)
        
        cartInfo += info
        print(cartInfo)
        InfoText.text = cartInfo
    }

}
