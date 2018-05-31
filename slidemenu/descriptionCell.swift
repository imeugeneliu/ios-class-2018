//
//  descriptionCell.swift
//  slidemenu
//
//  Created by Eugene Liu on 5/31/18.
//  Copyright © 2018 Eugene Liu. All rights reserved.
//

import UIKit

class descriptionCell: UITableViewCell {


    @IBOutlet weak var descriptionLabel: UILabel!
    {
        didSet
        {
            descriptionLabel.numberOfLines = 0
        }
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
