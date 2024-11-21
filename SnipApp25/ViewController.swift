//
//  ViewController.swift
//  SnipApp25
//
//  Created by Srikanth Kyatham on 11/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
 
    @IBAction func registerButtonPressed(_ sender: UIButton) {
//        let registerViewController = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as? RegisterViewController
        navigateTo(type: RegisterViewController.self, withIdentifier: "RegisterViewController", animated: true)
        
    }
    
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        navigateTo(type: LoginViewController.self, withIdentifier: "LoginViewController", animated: true)
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.1, animations: {
                sender.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
            }) { _ in
                UIView.animate(withDuration: 0.1) {
                    sender.transform = CGAffineTransform.identity
                }
            }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        styleButtons()
        addGradientBackground()
        animateButtons()
    }
    
    func styleButtons() {
        let buttons = [loginButton, registerButton]
            for button in buttons {
                button?.backgroundColor = .white
                button?.setTitleColor(.black, for: .normal)
                button?.layer.cornerRadius = 40
                button?.layer.shadowColor = UIColor.black.cgColor
                button?.layer.shadowOpacity = 0.2
                button?.layer.shadowOffset = CGSize(width: 0, height: 3)
                button?.layer.shadowRadius = 5
                button?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
            }
        }
        
        // Helper function to style buttons
//    func addGradientBackground() {
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.colors = [
//            UIColor(red: 0.2, green: 0.6, blue: 0.8, alpha: 1.0).cgColor,
//            UIColor(red: 0.1, green: 0.3, blue: 0.5, alpha: 1.0).cgColor
//        ]
//        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
//        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
//        gradientLayer.frame = view.bounds
//        view.layer.insertSublayer(gradientLayer, at: 0)
//    }
    func animateButtons() {
        let buttons = [loginButton, registerButton]
        for button in buttons {
            button?.alpha = 0
            UIView.animate(withDuration: 2.0, delay: 0.2, options: .curveEaseIn, animations: {
                button?.alpha = 1
            })
        }
    }


}

