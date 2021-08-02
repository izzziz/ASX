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
    
    
    var results: Rest? = nil {
        didSet {
            self.configureCell()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    private func configureCell() {
        
        guard self.results != nil else  {
            return
        }
     
     //   let resSymbol =  Fin.
    //    self.symbolsLabel.text = results?.title
        self.currentPriceLabel.text = results?.description
     //   self.currentChangeLabel.text = results.
    }
}


