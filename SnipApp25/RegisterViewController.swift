//
//  RegisterViewController.swift
//  SnipApp25
//
//  Created by Srikanth Kyatham on 11/12/24.
//

import Foundation
import Foundation
import UIKit

class RegisterViewController : UIViewController {
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        
        let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
        if let safeValue = loginViewController {
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
