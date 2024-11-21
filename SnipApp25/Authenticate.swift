//
//  Authenticate.swift
//  SnipApp25
//
//  Created by Srikanth Kyatham on 11/21/24.
//

import UIKit

class Authenticate: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    var recievedData: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradientBackground()
        usernameLabel.textColor = .white
        usernameLabel.text = recievedData
        // Do any additional setup after loading the view.
    }
    

}
