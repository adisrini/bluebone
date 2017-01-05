//
//  LoginViewController.swift
//  bluebone
//
//  Created by Aditya Srinivasan on 25/12/16.
//  Copyright © 2016 Aditya Srinivasan. All rights reserved.
//

import UIKit
import Parse
import NVActivityIndicatorView
import SwiftMessages

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    @IBAction func login(_ sender: Any) {
        let activityIndicator: NVActivityIndicatorView = NVActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        activityIndicator.center = self.view.center
        activityIndicator.type = NVActivityIndicatorType.ballScaleMultiple
        self.view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        UIApplication.shared.beginIgnoringInteractionEvents()
        
        displayError(title: "Error", message: "That user does not exist!")
    }
    
    func initializeView() {
        self.usernameTextField.delegate = self
        self.passwordTextField.delegate = self
    }
    
    func displayError(title: String, message: String) {
        // Instantiate a message view from the provided card view layout. SwiftMessages searches for nib
        // files in the main bundle first, so you can easily copy them into your project and make changes.
        let view = MessageView.viewFromNib(layout: .CardView)
        
        // Theme message elements with the warning style.
        view.configureTheme(.error)
        
        // Add a drop shadow.
        view.configureDropShadow()
        
        // Set message title, body, and button text.
        view.configureContent(title: title, body: message)
        view.button?.setTitle("OK", for: .normal)
        
        // Show the message.
        SwiftMessages.show(view: view)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initializeView()
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(textField.returnKeyType == UIReturnKeyType.next) {
            passwordTextField.becomeFirstResponder()
            return true
        } else if(textField.returnKeyType == UIReturnKeyType.go) {
            loginButton.sendActions(for: UIControlEvents.touchUpInside)
            return true
        }
        return false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
