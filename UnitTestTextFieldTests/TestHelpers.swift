//
//  TestHelpers.swift
//  UnitTestTextFieldTests
//
//  Created by ZEUS on 3/7/24.
//

import UIKit

extension UITextContentType : CustomStringConvertible{
    public var description: String {
        "textContentType: " + rawValue
    }
}

extension UITextAutocorrectionType: CustomStringConvertible{
    public var description: String {
        switch self {
        case .default:
            return "default"
        case .no:
            return "no"
        case .yes:
            return "yes"
        @unknown default:
            fatalError("Unknown UITextAutoCorrectionType")
        }
    }
}

extension UIReturnKeyType: CustomStringConvertible{
    public var description: String {
        switch self {
        case .default:
            "default"
        case .go:
            "go"
        case .google:
            "google"
        case .join:
            "join"
        case .next:
            "next"
        case .route:
            "route"
        case .search:
            "search"
        case .send:
            "send"
        case .yahoo:
            "yahoo"
        case .done:
            "done"
        case .emergencyCall:
            "emergencyCall"
        case .continue:
            "continue"
        @unknown default:
            fatalError("Unknown UIReturnKeyType")
        }
    }
}

func shouldChangeCharacters(
    in textField: UITextField,
    range: NSRange = NSRange(),
    replacement: String) -> Bool?{
        
        textField.delegate?.textField?(
            textField,
            shouldChangeCharactersIn: range,
            replacementString: replacement)
        
    }

@discardableResult func shouldReturn(in textField: UITextField) -> Bool?{
    textField.delegate?.textFieldShouldReturn?(textField)
}

func putInViewHierarchy(_ vc: UIViewController){
    let window = UIWindow()
    window.addSubview(vc.view)
}

func executeRunLoop(){
    RunLoop.current.run(until: Date())
}
