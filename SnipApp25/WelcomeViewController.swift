//
//  WelcomeViewController.swift
//  SnipApp25
//
//  Created by Srikanth Kyatham on 11/12/24.
//

import Foundation

import UIKit

class WelcomeViewController : UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addGradientBackground()
        welcomeLabel.transform = CGAffineTransform(translationX: 0, y: -200)
                welcomeLabel.alpha = 0
        //animateButtons()
        UIView.animate(withDuration: 1.5,
                               delay: 0.2,
                               usingSpringWithDamping: 0.5,
                               initialSpringVelocity: 0.5,
                               options: .curveEaseOut,
                               animations: {
                                   // Final state: Move label back to original position and make it visible
                                   self.welcomeLabel.transform = .identity
                                   self.welcomeLabel.alpha = 1
                               }, completion: nil)
    }
}
