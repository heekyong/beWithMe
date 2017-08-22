//
//  onGoingTableViewCell.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 19..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class onGoingTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var cateImage: UIImageView!
    @IBOutlet weak var levelImage: UIImageView!
    @IBOutlet weak var confidenceImage: UIImageView!
    
    @IBOutlet weak var giveupLabel: UILabel!
    @IBOutlet weak var leftTimeLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func giveUp(_ sender: Any) {
        
        let alert = UIAlertController(title: "Alert", message: "별 일을 포기하였습니다.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        
        giveupLabel.text = "포기하였습니다."
        giveupLabel.textColor = UIColor.red
    }

    
    @IBAction func complete(_ sender: Any) {
        
        let alert = UIAlertController(title: "Alert", message: "별 일을 완료하였습니다.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        
    }
    

}
