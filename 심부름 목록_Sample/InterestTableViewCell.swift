//
//  InterestTableViewCell.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 19..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class InterestTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var cateImage: UIImageView!
    @IBOutlet weak var InterestNum: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
