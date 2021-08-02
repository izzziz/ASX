//
//  StockWatchListTableViewCell.swift
//  ASX StockMarket
//
//  Created by Izzat Jabali on 24/7/21.
//

import UIKit

class StockWatchListTableViewCell: UITableViewCell {

    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var shortDescriptionLabel: UILabel!
    @IBOutlet weak var numberOfFollers: UILabel!
    @IBOutlet weak var symbolCount: UILabel!
    @IBOutlet weak var backGroundImage: UIImageView!
    @IBOutlet weak var isFollowedLabel: UILabel!
    
    
    var results: Results? = nil {
        didSet {
            self.configureCell()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
 
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    private func configureCell() {
        
        guard self.results != nil else  {
            return
        }
    //    let imagePic = results?.portfolios.first?.brand
//        self.idLabel.text = results?.id
        self.nameLabel.text = results?.portfolios.first?.name
        self.shortDescriptionLabel.text = results?.portfolios.first?.shortDescription ?? ""
        self.symbolCount.text = "Symbols Count #\(results?.portfolios.first?.symbolCount ?? 0)"
        self.numberOfFollers.text = "Followers #\(results?.portfolios.first?.followerCount ?? 0)"
     //   self.backGroundImage.image = imagePic?.first?.logoUrl
       
        self.backGroundImage.layer.cornerRadius = 15
        self.backGroundImage.layer.masksToBounds = true
   
    }
}
