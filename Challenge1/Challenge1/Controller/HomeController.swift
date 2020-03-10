//
//  HomeController.swift
//  Challenge1
//
//  Created by Dong Hyeong Lee on 2020-02-16.
//  Copyright © 2020 Dong Hyeong Lee. All rights reserved.
//

import UIKit
import SpriteKit

class HomeController: UIViewController {
    
    // MARK - Properties
    
    var delegate: HomeControllerDelegate?
    
    // MARK - INIT
    
    override func loadView() {
        self.view = SKView()
    }
    
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
        configureNavigationBar()
    }
    
    // MARK: Handlers
    
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle()
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "Side Menu"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "ic_menu_white_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
}
