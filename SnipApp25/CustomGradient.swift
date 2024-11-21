//
//  CustomGradient.swift
//  SnipApp25
//
//  Created by Srikanth Kyatham on 11/12/24.
//
import UIKit

extension UIViewController {
    
    func addGradientBackground(colors: [CGColor]? = nil) {
        // Remove existing gradient layers, if any
        self.view.layer.sublayers?.removeAll(where: { $0 is CAGradientLayer })

        let gradientLayer = CAGradientLayer()
        
        // If colors are provided, use them; otherwise, use the default gradient colors
        gradientLayer.colors = colors ?? [
            UIColor(red: 0.2, green: 0.6, blue: 0.8, alpha: 1.0).cgColor,
            UIColor(red: 0.1, green: 0.3, blue: 0.5, alpha: 1.0).cgColor
        ]
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

extension UIViewController {
    func navigateTo<T: UIViewController>(type: T.Type, withIdentifier identifier: String, animated: Bool = true) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: identifier) as? T else {
            print("Could not instantiate view controller with identifier \(identifier)")
            return
        }
        self.navigationController?.pushViewController(viewController, animated: animated)
    }
}
