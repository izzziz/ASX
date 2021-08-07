//
//  MainStatsTableViewCell.swift
//  ASX StockMarket
//
//  Created by Izzat Jabali on 5/8/21.
//

import UIKit

class MainStatsTableViewCell: UITableViewCell {

    @IBOutlet weak var sectorLabel: UILabel!
    @IBOutlet weak var industryLabel: UILabel!
    @IBOutlet weak var mCapLabel: UILabel!
    @IBOutlet weak var websiteLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
