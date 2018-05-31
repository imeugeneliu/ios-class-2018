//
//  countryCell.swift
//  slidemenu
//
//  Created by Eugene Liu on 5/31/18.
//  Copyright © 2018 Eugene Liu. All rights reserved.
//

import UIKit

class countryCell: UITableViewCell {

    @IBOutlet weak var countryName: UILabel!
    {
        didSet
        {
            countryName.numberOfLines = 0
        }
    }
    @IBOutlet weak var iconImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
