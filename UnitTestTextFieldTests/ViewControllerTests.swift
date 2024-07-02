//
//  ViewControllerTests.swift
//  UnitTestTextFieldTests
//
//  Created by ZEUS on 3/7/24.
//

import XCTest
@testable import UnitTestTextField

final class ViewControllerTests: XCTestCase {
    
    var sut: ViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        
        sut.loadViewIfNeeded()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_outlets_shouldBeConnected(){
        XCTAssertNotNil(sut.userNameTextField, "usernameField")
        XCTAssertNotNil(sut.passwordTextField, "passwordTextField")
    }
    
}
