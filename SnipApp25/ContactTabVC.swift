//
//  ContactTabVC.swift
//  SnipApp25
//
//  Created by Srikanth Kyatham on 11/13/24.
//

import UIKit

class ContactTabVC: UIViewController {

    @IBOutlet weak var submitButton: CustomButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradientBackground()
        // Do any additional setup after loading the view.
        styleSubmitButton()
    }
    
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.1,
                           animations: {
                               sender.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                           },
                           completion: { _ in
                               UIView.animate(withDuration: 0.1) {
                                   sender.transform = CGAffineTransform.identity
                               }
                           })
    }
    @IBAction func twitterButtonTapped(_ sender: UIButton) {
        openSocialMedia(url: "https://www.twitter.com")
    }
    
    @IBAction func facebookButtonTapped(_ sender: UIButton) {
        openSocialMedia(url: "https://www.facebook.com")
    }
    
    @IBAction func linkedinButtonTapped(_ sender: UIButton) {
        openSocialMedia(url: "https://www.linkedin.com")
    }
    
    private func openSocialMedia(url: String) {
            if let socialURL = URL(string: url) {
                UIApplication.shared.open(socialURL)
            }
        }
        
        private func styleSubmitButton() {
            // Add styling for the Submit button (rounded corners, color, etc.)
            submitButton.layer.cornerRadius = 10
            submitButton.backgroundColor = UIColor.systemBlue
            submitButton.tintColor = .white
        }
    
    
}
