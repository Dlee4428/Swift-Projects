//
//  MenuController.swift
//  Challenge1
//
//  Created by Dong Hyeong Lee on 2020-02-16.
//  Copyright © 2020 Dong Hyeong Lee. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Menu Option Cell"

class MenuController: UIViewController{
    
    // MARK - Properties
    
    var tableView: UITableView!
    
    // MARK - INIT
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Handlers
    
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(MenuOptionCell.self, forCellReuseIdentifier: reuseIdentifier)
    }
}

extension MenuController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! MenuOptionCell
        return cell
    }
    
    
}
