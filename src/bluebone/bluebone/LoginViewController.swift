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
    }
    
    func initializeView() {
        self.usernameTextField.delegate = self
        self.passwordTextField.delegate = self
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
