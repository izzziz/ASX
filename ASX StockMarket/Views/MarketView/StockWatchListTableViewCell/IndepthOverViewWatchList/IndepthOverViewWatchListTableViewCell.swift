//
//  IndepthOverViewWatchListTableViewCell.swift
//  ASX StockMarket
//
//  Created by Izzat Jabali on 25/7/21.
//

import UIKit

class IndepthOverViewWatchListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var symbolsLabel: UILabel!
    @IBOutlet weak var currentPriceLabel: UILabel!
    @IBOutlet weak var currentChangeLabel: UILabel!
    
    
    var topNLOw: TopAndLowStocks? = nil {
        didSet {
            self.configureCellForTopNLow()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    private func configureCellForTopNLow() {
        
//        guard self.topNLOw != nil else  {
//            return
//        }
        let quoteS = topNLOw?.finance.result.first
      //  symbolsLabel.text = quoteS?.quotes
    }
}


