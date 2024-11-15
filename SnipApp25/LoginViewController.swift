//
//  LoginViewController.swift
//  SnipApp25
//
//  Created by Srikanth Kyatham on 11/11/24.
//

import Foundation
import UIKit

class LoginViewController : UIViewController {
    
//    @IBAction func submitButtonPressed(_ sender: UIButton) {
//        let welcomeViewController = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeViewController") as? WelcomeViewController
//        if let safeValue = welcomeViewController {
//            self.navigationController?.pushViewController(safeValue, animated: true)
//        }
//    }
    
    
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
}
