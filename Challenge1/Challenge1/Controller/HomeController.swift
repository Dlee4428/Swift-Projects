//
//  HomeController.swift
//  Challenge1
//
//  Created by Dong Hyeong Lee on 2020-02-16.
//  Copyright © 2020 Dong Hyeong Lee. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    // MARK - Properties
    
    var delegate: HomeControllerDelegate?
    
    // MARK - INIT
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
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
