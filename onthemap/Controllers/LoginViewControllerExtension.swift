//
//  LoginViewControllerExtension.swift
//  onthemap
//
//  Created by Marco Galetta on 08/07/2020.
//  Copyright © 2020 Marco Galetta. All rights reserved.
//


import UIKit

extension LoginViewController: UITextFieldDelegate {
    
    func configureUI(){
        navigationController?.isNavigationBarHidden = true
        // Triggers preferredStatusBarStyle to make StatusBar Light
        setNeedsStatusBarAppearanceUpdate()
        
        // Change corners to be round
        emailTextField.layer.cornerRadius = 8
        emailTextField.layer.borderWidth = 2.0
        emailTextField.layer.borderColor =  UIColor(white: 1, alpha: 1).cgColor
        emailTextField.layer.masksToBounds = true
        
        
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.layer.borderWidth = 2.0
        passwordTextField.layer.borderColor =  UIColor(white: 1, alpha: 1).cgColor
        passwordTextField.layer.masksToBounds = true
        
        
        loginButton.layer.cornerRadius = 8
        loginButton.layer.borderWidth = 2.0
        loginButton.layer.masksToBounds = true
        loginButton.layer.borderColor =  UIColor(white: 1.0, alpha: 0).cgColor
        
        // Add Padding to the left and right of the text
        emailTextField.setPaddingPoints(15)
        passwordTextField.setPaddingPoints(15)
    }
    
    // MARK: Hides KeyBoard after Returning from Editing Text Field
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    // MARK: Set Status Bar Color to White
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: Show Network Activity
    func setLogginIn(_ loggingIn: Bool){
        if loggingIn{
            activityIndicator.startAnimating()
            emailTextField.isEnabled = false
            passwordTextField.isEnabled = false
            loginButton.isEnabled = false
            loginButton.alpha = 0.5
        }else{
            activityIndicator.stopAnimating()
            emailTextField.isEnabled = true
            passwordTextField.isEnabled = true
            loginButton.isEnabled = true
            loginButton.alpha = 1.0
        }
    }
}


