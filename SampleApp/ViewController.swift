//
//  ViewController.swift
//  SampleApp
//
//  Created by Roberto Frontado on 17/09/2020.
//  Copyright © 2020 Roberto Frontado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let button1 = Button()
    let button2 = Button()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button1.setTitle("Login", for: .normal)
        button1.addTarget(self, action: #selector(toggleState), for: .touchUpInside)
        
        button2.setTitle("Sign up", for: .normal)
        button2.addTarget(self, action: #selector(toggleState), for: .touchUpInside)
        
        [button1, button2].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
            
            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 32)
        ])
    }

    @objc func toggleState(button: Button) {
        button.isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            button.isLoading = false
        }
    }

}

