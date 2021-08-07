//
//  TopAndLowTableViewCell.swift
//  ASX StockMarket
//
//  Created by Izzat Jabali on 30/7/21.
//

import UIKit

class TopAndLowTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var symbol: UILabel!
    @IBOutlet weak var fullEchName: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    var tnl: TopAndLowStocks? = nil{
        didSet {
            self.configureTopAndLow()
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
    func configureTopAndLow() {
        
        guard self.tnl != nil else {
            return
        }
//        let update = tnl?.finance.result.first?.quotes
//        self.descriptionLabel.text = tnl?.finance.result.first?.description
//        self.title.text = tnl?.finance.result.first?.title
//        self.fullEchName.text = update?.first?.fullExchangeName
//        self.symbol.text = update?.first?.symbol
    }
    
    
}
