//
//  LoginViewController.swift
//  onthemap
//
//  Created by Marco Galetta on 08/07/2020.
//  Copyright © 2020 Marco Galetta. All rights reserved.
//


import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         configureUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    // MARK: Authenticate Login
    @IBAction func login(_ sender: Any) {
        setLogginIn(true)
        let userData = LoginData(username: emailTextField.text ?? "", password: passwordTextField.text ?? "")
        UdacityClient.login(userData: userData, completion: handleLogin(registered:error:))
    }
    
    // MARK: If Correct Credintails Login
    func handleLogin(registered: Bool, error: Error?){
        setLogginIn(false)
        guard error == nil, registered == true
            else {
                showError(title: "Login Failed", message: error?.localizedDescription ?? "Error")
                return
            }
        self.performSegue(withIdentifier: "login", sender: self)
    }
}

