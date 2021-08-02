//
//  PopDetailWatchListTableViewCell.swift
//  ASX StockMarket
//
//  Created by Izzat Jabali on 28/7/21.
//

import UIKit

class PopDetailWatchListTableViewCell: UITableViewCell {

    @IBOutlet weak var segmentController: UISegmentedControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func segmentedControllerTapped(_ sender: UISegmentedControl) {
        
    }
}
