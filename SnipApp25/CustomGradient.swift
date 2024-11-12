//
//  CustomGradient.swift
//  SnipApp25
//
//  Created by Srikanth Kyatham on 11/12/24.
//
import UIKit

extension UIViewController {
    
    func addGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor(red: 0.2, green: 0.6, blue: 0.8, alpha: 1.0).cgColor,
            UIColor(red: 0.1, green: 0.3, blue: 0.5, alpha: 1.0).cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
