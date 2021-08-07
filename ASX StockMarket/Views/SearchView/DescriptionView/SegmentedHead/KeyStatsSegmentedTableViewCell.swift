//
//  KeyStatsSegmentedTableViewCell.swift
//  ASX StockMarket
//
//  Created by Izzat Jabali on 5/8/21.
//

import UIKit

class KeyStatsSegmentedTableViewCell: UITableViewCell {

    @IBOutlet weak var exchangeLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var priceDifferneceLabel: UILabel!
    @IBOutlet weak var bameOfSyboleLabel: UILabel!
    @IBOutlet weak var symboleLabel: UILabel!
    @IBOutlet weak var segmentedController: UISegmentedControl!
    
    var segmenntHandler:((Int) -> (Void))?
    
    let segmentedIndex = 0
    var sd: StockData? {
        didSet {
            self.configureCell()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure() {

        priceDifferneceLabel.layer.cornerRadius = 8
        priceDifferneceLabel.layer.masksToBounds = true
    }
    
    func configureCell() {
      if let stockData = sd {
        self.exchangeLabel.text = stockData.quoteType.exchange
        self.priceLabel.text = "\(stockData.price.regularMarketPrice)"
        let marketStatus: Bool = (stockData.price.isMarketUp)
        let upDownSymbol =  marketStatus ? "+ " : ""
        self.priceLabel.textColor =  marketStatus ? UIColor.systemGreen : UIColor.systemRed
        self.priceDifferneceLabel.text = upDownSymbol + ((stockData.price.regularMarketChange.fmt ) + "%")
        self.priceDifferneceLabel.backgroundColor = marketStatus ? UIColor.themeGreenShade : UIColor.themeRedShade
      
       
        
      }
    }
    
    
    @IBAction func didChangeSegment(_ sender: UISegmentedControl) {
      
        if let handler = self.segmenntHandler {
            handler(sender.selectedSegmentIndex)
           
        }
        
    }
    
}
