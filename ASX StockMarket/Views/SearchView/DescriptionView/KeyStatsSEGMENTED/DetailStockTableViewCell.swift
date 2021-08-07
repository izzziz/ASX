//
//  DetailStockTableViewCell.swift
//  ASX StockMarket
//
//  Created by Izzat Jabali on 21/7/21.
//

import UIKit
var isTapped: Bool = false

class DetailStockTableViewCell: UITableViewCell {
    
    @IBOutlet weak var assetSectorLabel: UILabel!
    @IBOutlet weak var assetMarketCapLabel: UILabel!
    @IBOutlet weak var assetIndustryLabel: UILabel!
    @IBOutlet weak var assetCurrentDescriptionLabel: UILabel!
    @IBOutlet weak var assetWebsiteLabel: UILabel!
    @IBOutlet weak var assetCountryLabel: UILabel!

    @IBOutlet weak var readMoreButton: UIButton!


    var stockDt: StockData? {
        didSet {
            self.configureCell()
        }
    }
    
    var sDetail: SummaryDetail?
    var keyStats: DetailStatsTableViewCell?
    
    var readButtonTapped: (() -> (Void))?
   
    
    var stockData: StockData? = nil {
        didSet {
            self.configureCell()
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
       
        self.configure()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: - ButtonAction and Configuration
    //MARK: -
    
    func lineBreakingButton() {
        self.assetCurrentDescriptionLabel?.lineBreakMode = .byWordWrapping
        self.assetCurrentDescriptionLabel?.sizeToFit()

    }
    
    @IBAction func readMoreButtonPressed(_ sender: UIButton) {
        print("Tapppped")
        isTapped = !isTapped
        self.assetCurrentDescriptionLabel.numberOfLines = isTapped ? 0 : 5
        self.assetCurrentDescriptionLabel.sizeToFit()
        
      
        if let readHandler = self.readButtonTapped {
            readHandler()
        }
    }
    
    //MARK:- Configure Func
    //MARK: -
    
    func configure() {
        self.assetCurrentDescriptionLabel?.numberOfLines = 5
        readMoreButton.layer.cornerRadius = 8
        readMoreButton.layer.masksToBounds = true
    }
    
  func configureCell() {
    if let stockData = stockDt {
        self.assetSectorLabel.text = stockData.assetProfile.sector
        self.assetIndustryLabel.text = stockData.assetProfile.industry
        self.assetCurrentDescriptionLabel.text = stockData.assetProfile.longBusinessSummary
        self.assetMarketCapLabel.text = "\(stockData.price.marketCap.raw)"
        self.assetWebsiteLabel.text = stockData.assetProfile.website
        self.assetCountryLabel.text = stockData.assetProfile.country

    }
   }
    
}


