//
//  LoginViewController.swift
//  SnipApp25
//
//  Created by Srikanth Kyatham on 11/11/24.
//

import Foundation
import UIKit

class LoginViewController : UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func forgotPasswordPressed(_ sender: UIButton) {
        let forgotPasswordViewController = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as? ForgotPasswordViewController
        if let safeValue = forgotPasswordViewController {
            self.navigationController?.pushViewController(safeValue, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //styleButtons()
        addGradientBackground()
        //animateButtons()
    }
    
    @IBAction func submitPressed(_ sender: UIButton) {
        if let username = usernameTextField.text, let password = passwordTextField.text {
            if username == "Dharma" && password == "Tirunagari" {
                navigateToAuthenticateVC(name: username)
            } else{
                
            }
        }
    }
    func navigateToAuthenticateVC(name: String){
        guard let authenticateVC = self.storyboard?.instantiateViewController(withIdentifier: "Authenticate") as? Authenticate else { return }
        
        authenticateVC.recievedData = "Welcome \(name), you are logged in successfully"
        self.navigationController?.pushViewController(authenticateVC, animated: true)
    }
}
