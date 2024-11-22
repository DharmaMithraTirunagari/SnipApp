//
//  WelcomeViewController.swift
//  SnipApp25
//
//  Created by Srikanth Kyatham on 11/12/24.
//

import Foundation

import UIKit

class WelcomeViewController : UIViewController {
    
    @IBOutlet weak var featuredScrollView: UIScrollView!
    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addGradientBackground()
        setupFeaturedDesigns()
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
    
    func setupFeaturedDesigns() {
        let featuredDesigns = [
            (title: "Eco-Friendly Bag", imageName: "EcoFriendlybag"),
            (title: "Upcycled Jeans", imageName: "upcyclingJeans"),
            (title: "Recycled Jewelry", imageName: "recycledJewel"),
            (title: "Repurposed Glass Bottle", imageName: "glassbottles")
            
        ]
        
        var xOffset: CGFloat = 10
        for design in featuredDesigns {
            let card = createDesignCard(title: design.title, imageName: design.imageName)
            card.frame = CGRect(x: xOffset, y: 0, width: 150, height: 150)
            featuredScrollView.addSubview(card)
            xOffset += 160
        }
        
        featuredScrollView.contentSize = CGSize(width: xOffset, height: 150)
    }
        
    func createDesignCard(title: String, imageName: String) -> UIView {
            let card = UIView()
                card.backgroundColor = .white
                card.layer.cornerRadius = 10
                card.layer.shadowColor = UIColor.black.cgColor
                card.layer.shadowOpacity = 0.1
                card.layer.shadowOffset = CGSize(width: 0, height: 2)
                
                // Create and configure image view
                let imageView = UIImageView()
                imageView.image = UIImage(named: imageName)
                imageView.contentMode = .scaleAspectFill
                imageView.clipsToBounds = true
                imageView.layer.cornerRadius = 10
                imageView.frame = CGRect(x: 0, y: 0, width: 150, height: 120)
                card.addSubview(imageView)
                
                // Create and configure label
                let label = UILabel()
                label.text = title
                label.textAlignment = .center
                label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
                label.frame = CGRect(x: 0, y: 110, width: 150, height: 50)
                card.addSubview(label)
                
                return card
        }
    }

