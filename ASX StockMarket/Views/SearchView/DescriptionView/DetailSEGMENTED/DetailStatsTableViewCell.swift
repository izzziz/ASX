//
//  DetailStatsTableViewCell.swift
//  ASX StockMarket
//
//  Created by Izzat Jabali on 28/7/21.
//

import UIKit

class DetailStatsTableViewCell: UITableViewCell {

    @IBOutlet weak var open: UILabel!
    @IBOutlet weak var high: UILabel!
    @IBOutlet weak var low: UILabel!
    @IBOutlet weak var fiftyWH: UILabel!
    @IBOutlet weak var fiftyWL: UILabel!
    
    var sumDetail: SummaryDetail? {
        didSet {
            guard let data = self.sumDetail else {
                return
            }
            self.configureKeyStat(with: data)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureKeyStat(with summaryDetail: SummaryDetail) {
        open.text = summaryDetail.summaryDetailOpen.fmt
        high.text = summaryDetail.regularMarketDayHigh.fmt
        low.text = summaryDetail.dayLow.fmt
        fiftyWH.text = summaryDetail.fiftyTwoWeekHigh.fmt
        fiftyWL.text = summaryDetail.fiftyTwoWeekLow.fmt
        
    }
    
    
}


