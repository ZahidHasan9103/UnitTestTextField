//
//  ViewControllerTests.swift
//  UnitTestTextFieldTests
//
//  Created by ZEUS on 3/7/24.
//

import XCTest
@testable import UnitTestTextField

final class ViewControllerTests: XCTestCase {
    
    func test_outlets_shouldBeConnected(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut:ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        
        sut.loadView()
        
        XCTAssertNotNil(sut.userNameTextField, "usernameField")
        XCTAssertNotNil(sut.passwordTextField, "passwordTextField")
    }
    
}
