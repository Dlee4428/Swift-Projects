//
//  GameViewController.swift
//  Challenge1
//
//  Created by Dong Hyeong Lee on 2020-01-07.
//  Copyright © 2020 Dong Hyeong Lee. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    // MARK - Properties
       
    var menuController: UIViewController!
    var centerController: UIViewController!
    var isExpanded = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        configureHomeController()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: Handlers
    
    func configureHomeController() {
        let homeController = HomeController()
        homeController.delegate = self
        centerController = UINavigationController(rootViewController: homeController)
        
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
    }
    
    func configureMenuController() {
        if menuController == nil {
            // add our menu controller here
            menuController = MenuController()
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            
        }
    }
    
    func showMenuController(shouldExpand: Bool){
        
        if shouldExpand {
            // Show menu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
            }, completion: nil)
            
        } else {
            // Hide menu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = 0
            }, completion: nil)
        }
    }
    
}

extension GameViewController: HomeControllerDelegate {
    
    func handleMenuToggle() {
        
        if !isExpanded {
            configureMenuController()
        }
        
        isExpanded = !isExpanded
        showMenuController(shouldExpand: isExpanded)
    }
}

