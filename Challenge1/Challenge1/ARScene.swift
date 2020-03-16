//
//  ARScene.swift
//  Challenge1
//
//  Created by Sarfaraz Syed on 2020-03-16.
//  Copyright © 2020 Dong Hyeong Lee. All rights reserved.
//

import Foundation
import SpriteKit
import ARKit

class ARScene: SKScene, ARSCNViewDelegate  {

    var buttonHome:UIButton!
    
   // @IBOutlet var SceneView : ARSCNView!
    
    override func didMove(to view: SKView) {
    
        //let configuration = ARWorldTrackingConfiguration()
        //configuration.planeDetection = .horizontal
        //SceneView.session.run(configuration)
        
   
        backgroundColor = SKColor.yellow
        // button feacture
        buttonHome = UIButton()
        buttonHome.frame = CGRect(x: 150, y: 600, width: 120, height: size.height / 15)
        //button1.center = view.center
        buttonHome.setTitle("Home", for: UIControl.State.normal)
        buttonHome.setTitleColor(UIColor.white, for: UIControl.State.normal)
        buttonHome.backgroundColor = .darkGray
        buttonHome.layer.borderWidth = 5
        //buttonHome.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        buttonHome.addTarget(self, action: #selector(ChangeGameSence), for: UIControl.Event.touchUpInside)
        view.addSubview(buttonHome)
    }
    

    @objc func ChangeGameSence(){
          buttonHome.removeFromSuperview()
          buttonHome = nil
          
          //SceneView.session.pause()
          let skView = self.view!
          let Scene = GameScene(size: CGSize(width: 2048, height: 1536))
          Scene.scaleMode = .aspectFill
          skView.presentScene(Scene)
    }

}
