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
    
    func test_usernameField_attributeShouldBeSet(){
        let textField = sut.userNameTextField!
        XCTAssertEqual(textField.textContentType, .username, "textContentType")
        XCTAssertEqual(textField.autocorrectionType, .no, "autoCorrectionType")
        XCTAssertEqual(textField.returnKeyType, .next, "returnType")
    }
    
    func test_passwordField_attributeShouldBeSet(){
        let textField = sut.passwordTextField!
        XCTAssertEqual(textField.textContentType, .password, "textContentType")
        XCTAssertEqual(textField.returnKeyType, .go, "returnType")
        XCTAssertTrue(textField.isSecureTextEntry, "isSecureTextEntry")
    }
    
}
