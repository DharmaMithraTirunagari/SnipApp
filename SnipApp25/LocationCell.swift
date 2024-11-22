//
//  LocationCell.swift
//  SnipApp25
//
//  Created by Srikanth Kyatham on 11/21/24.
//

import UIKit

class LocationCell: UITableViewCell {

    @IBOutlet weak var shopAddressLabel: UILabel!
    @IBOutlet weak var shopNameLabel: UILabel!
    @IBOutlet weak var shopImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
