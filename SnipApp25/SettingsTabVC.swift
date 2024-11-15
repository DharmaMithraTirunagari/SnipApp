//
//  SettingsTabVC.swift
//  SnipApp25
//
//  Created by Srikanth Kyatham on 11/13/24.
//

import UIKit

class SettingsTabVC: UIViewController {


    @IBOutlet weak var accountButtonsStackView: UIStackView!

    @IBOutlet weak var appearanceLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var notificationsLabel: UILabel!
    @IBOutlet weak var accountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        accountButtonsStackView.isHidden = true
        addGradientBackground()
        // Do any additional setup after loading the view.
    }
    @IBAction func accountSectionTapped(_ sender: UITapGestureRecognizer) {
        toggleAccountSection()
    }
    private func toggleAccountSection() {
        UIView.animate(withDuration: 0.3) {
            self.accountButtonsStackView.isHidden.toggle()
        }
    }
    
    @IBAction func darkModeSwitchToggled(_ sender: UISwitch) {
        if sender.isOn {
                // Dark Mode On
                addGradientBackground(colors: [
                    UIColor.black.cgColor,
                    UIColor.darkGray.cgColor
                ])
                settingsLabel.textColor = .white
                appearanceLabel.textColor = .white
                notificationsLabel.textColor = .white
                accountLabel.textColor = .white
            } else {
                // Dark Mode Off
                addGradientBackground() // Default colors
                settingsLabel.textColor = .black
                appearanceLabel.textColor = .black
                notificationsLabel.textColor = .black
                accountLabel.textColor = .black
            }
    }
    
    

}
