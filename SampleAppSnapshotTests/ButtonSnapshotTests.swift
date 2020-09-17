//
//  ButtonSnapshotTests.swift
//  SampleAppSnapshotTests
//
//  Created by Roberto Frontado on 17/09/2020.
//  Copyright © 2020 Roberto Frontado. All rights reserved.
//

import XCTest
import SnapshotTesting
@testable import SampleApp

class ButtonSnapshotTests: XCTestCase {

    let testName = "Button"
    
    func test_buttonDefaultState() {
        // # 1
        let button = Button(frame: .init(x: 0, y: 0, width: 128, height: 48))
        button.setTitle("Login", for: .normal)
        
        let result = verifySnapshot(matching: button,
                                    as: .image,
                                    named: "Default",
                                    testName: "Button")
                
        XCTAssertNil(result)
    }
    
    func test_buttonLoadingState() {
        let button = Button(frame: .init(x: 0, y: 0, width: 128, height: 48))
        button.setTitle("Login", for: .normal)
        button.isLoading = true
        
        let result = verifySnapshot(matching: button,
                                    as: .image,
                                    named: "Loading",
                                    testName: "Button")
        
        XCTAssertNil(result)
    }
    
}
