//
//  sportsTableViewCell.swift
//  slidemenu
//
//  Created by Eugene Liu on 5/10/18.
//  Copyright © 2018 Eugene Liu. All rights reserved.
//

import UIKit

class sportsTableViewCell: UITableViewCell
{
    
    @IBOutlet weak var sportsImage: UIImageView!
    @IBOutlet weak var sportsName: UILabel!
    @IBOutlet weak var sportsPosition: UILabel!
    @IBOutlet weak var sportsTeamName: UILabel!
    
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
