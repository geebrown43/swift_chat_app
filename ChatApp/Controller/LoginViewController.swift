//
//  LoginViewController.swift
//  ChatApp
//
//  Created by Gavin Brown on 11/16/19.
//  Copyright © 2019 DevelopITLLC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // This sets up the inputs container view on the screen...this can also be referenced later as inputsContainerView
    let inputsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 4
        view.layer.masksToBounds = true
        return view
    }()
    
    let registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(r: 80, g: 101, b: 161)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Register", for: .normal)
        button.layer.cornerRadius = 4
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Must set value in info.plist for view controller based status bar === 'YES'
        self.setNeedsStatusBarAppearanceUpdate()
        
        // Updates screen styling
        view.backgroundColor = UIColor(r: 61, g: 91, b: 151)
        view.addSubview(inputsContainerView)
        view.addSubview(registerButton)
        
        // Creates inputs container view on screen when the screen loads
        setupInputsContainerView()
        setupButtonContainerView()
    }
    // Have to setNeedsStatusBarApperanceUpdate up before this will actually work
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // This sets all of the necessary anchors for the inputs view container
    func setupInputsContainerView() {
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true;
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true;
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true; // the constant here determines the distance / 2 from each side of screens width
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true;
    }
    
    func setupButtonContainerView() {
        registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        registerButton.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 12).isActive = true // In this case we must set anchor for bottom button to equal the input containers bottom anchor
        registerButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true; // the constant here determines the distance / 2 from each side of screens width
        registerButton.heightAnchor.constraint(equalToConstant: 50).isActive = true;
    }

}

// Created this extension for convenience so we dont have to add value / 255 every time
extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
