//
//  TextFieldDelegate.swift
//  Meme Me
//
//  Created by Ying Xiong on 9/28/15.
//  Copyright © 2015 Ying Xiong. All rights reserved.
//

import Foundation
import UIKit

class TextFieldDelegate: NSObject, UITextFieldDelegate {
    let defaultText: String
    
    init(defaultText: String) {
        self.defaultText = defaultText
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        if textField.text == defaultText {
            textField.text = ""
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}