//
//  UITextFieldExtension.swift
//  onthemap
//
//  Created by Marco Galetta on 08/07/2020.
//  Copyright © 2020 Marco Galetta. All rights reserved.
//


import UIKit

extension UITextField {
    func setPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
