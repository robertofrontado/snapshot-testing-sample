//
//  LoginViewController2.swift
//  SampleApp
//
//  Created by Roberto Frontado on 17/09/2020.
//  Copyright © 2020 Roberto Frontado. All rights reserved.
//

import UIKit

class LoginViewController2: UIViewController {
    
    private let emailLabel = UILabel()
    private let emailTextField = TextField()
    private let passwordLabel = UILabel()
    private let passwordTextField = TextField()
    private let loginButton = Button()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign in".uppercased()
        view.backgroundColor = .white
        
        emailLabel.text = "Email".uppercased()
        emailLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        emailTextField.placeholder = "hello@gmail.com"
        
        passwordLabel.text = "Password".uppercased()
        passwordLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        passwordTextField.placeholder = "123456"
        passwordTextField.isSecureTextEntry = true
        
        loginButton.setTitle("Sign in".uppercased(), for: .normal)
        
        [emailTextField, passwordTextField].forEach {
            $0.layer.borderColor = UIColor.systemGray.cgColor
            $0.layer.borderWidth = 1
            $0.layer.cornerRadius = 8
            $0.heightAnchor.constraint(equalToConstant: 48).isActive = true
        }
        
        let emailStackView = UIStackView(arrangedSubviews: [emailLabel, emailTextField])
        let passwordStackView = UIStackView(arrangedSubviews: [passwordLabel, passwordTextField])
        
        [emailStackView, passwordStackView].forEach {
            $0.axis = .vertical
            $0.spacing = 8
        }
        
        let stackView = UIStackView(arrangedSubviews: [emailStackView, passwordStackView])
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 32
        
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            loginButton.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
}
