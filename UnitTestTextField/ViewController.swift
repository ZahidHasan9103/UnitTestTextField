//
//  ViewController.swift
//  UnitTestTextField
//
//  Created by ZEUS on 3/7/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet private(set) weak var userNameTextField: UITextField!
    @IBOutlet private(set) weak var passwordTextField: UITextField!
    
    deinit{
        print("ViewController.deinit")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    private func performLogin(userName: String, password: String){
        print("UserName: \(userName)")
        print("Password: \(password)")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField === userNameTextField{
            passwordTextField.becomeFirstResponder()
        }else{
            guard let username = userNameTextField.text,
                  let password = passwordTextField.text else{
                return false
            }
            
            passwordTextField.resignFirstResponder()
            performLogin(userName: username, password: password)
        }
        return false
    }
    
    //Prevent Spacing for username textfield
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField === userNameTextField{
            return !string.contains(" ")
        }else{
            return true
        }
    }


}

