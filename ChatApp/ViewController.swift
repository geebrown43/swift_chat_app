//
//  ViewController.swift
//  ChatApp
//
//  Created by Gavin Brown on 11/16/19.
//  Copyright © 2019 DevelopITLLC. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }
    
    
    @objc func handleLogout() {
        print("we have logged out")
    }


}

