//
//  ViewController.swift
//  LiveCodingExample
//
//  Created by Dong Hyeong Lee on 2020-01-14.
//  Copyright © 2020 Dong Hyeong Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myButton: UIButton
    
    init(){
        myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(myButton)
        myButton.setImage(UIImage(named: "cat-icon-13"), for: .normal)
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        myButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
    
    @objc func myButtonTapped(){
        print("My button tapped")
        
        let secondViewController = SecondViewController(nibName: nil, bundle: nil)
        secondViewController.view.backgroundColor = .red
        self.present(secondViewController, animated: true, completion: nil)
    }
}
