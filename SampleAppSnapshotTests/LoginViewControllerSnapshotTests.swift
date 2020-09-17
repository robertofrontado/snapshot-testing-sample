//
//  LoginViewControllerSnapshotTests.swift
//  SampleAppSnapshotTests
//
//  Created by Roberto Frontado on 17/09/2020.
//  Copyright © 2020 Roberto Frontado. All rights reserved.
//

import XCTest
import SnapshotTesting
@testable import SampleApp

class LoginViewControllerSnapshotTests: XCTestCase {
    
    func test_loginViewControllerDefaultState() {
        let viewController = UINavigationController(rootViewController: LoginViewController2())
        verifyViewController(viewController, named: "Default")
    }
    
    private func verifyViewController(_ viewController: UIViewController, named: String) {
        let devices: [String: ViewImageConfig] = ["iPhoneX": .iPhoneX,
                                                  "iPhone8": .iPhone8,
                                                  "iPhoneSE": .iPhoneSe]
        
        let results = devices.map { device in
            verifySnapshot(matching: viewController,
                           as: .image(on: device.value),
                           named: "\(named)-\(device.key)",
                           testName: "LoginViewController")
        }
        
        results.forEach { XCTAssertNil($0) }
    }
    
}


