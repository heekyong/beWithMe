//
//  MainListTableViewCell.swift
//  심부름 목록_Sample
//
//  Created by cscoi008 on 2017. 8. 7..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class MainListTableViewCell: UITableViewCell {
    
    //커스텀 셀 요소  아웃렛 연결
//    @IBOutlet weak var questICON: UIImageView!
//    @IBOutlet weak var mTitleLabel: UILabel!
//    @IBOutlet weak var mDetailLabel: UILabel!
//    @IBOutlet weak var levelRate: UIImageView!
//    @IBOutlet weak var crediblityRate: UIImageView!
    //    @IBOutlet weak var peopleIcon: UIImageView!
    //    @IBOutlet weak var interested: UIImageView!
    // TitleLabel
    // DetailLabel

    @IBOutlet weak var LevelStarImage: UIImageView!

    @IBOutlet weak var ConfidenceStarImage: UIImageView!
    
    @IBOutlet weak var TitleLabel:
        UILabel!
    
    @IBOutlet weak var DetailLabel: UILabel!
    
    @IBOutlet weak var CategoryImage: UIImageView!
    
    @IBOutlet weak var PriceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
