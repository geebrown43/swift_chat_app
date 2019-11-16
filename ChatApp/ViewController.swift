//
//  ViewController.swift
//  ChatApp
//
//  Created by Gavin Brown on 11/16/19.
//  Copyright © 2019 DevelopITLLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }

    @objc func handleLogout() {
        print("User has logged out")
    }

}

