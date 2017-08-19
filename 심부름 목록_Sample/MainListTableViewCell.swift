//
//  MainListTableViewCell.swift
//  심부름 목록_Sample
//
//  Created by cscoi008 on 2017. 8. 7..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class MainListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var LevelStarImage: UIImageView!

    @IBOutlet weak var ConfidenceStarImage: UIImageView!
    
    @IBOutlet weak var TitleLabel:
        UILabel!
    
    @IBOutlet weak var DetailLabel: UILabel!
    
    @IBOutlet weak var CategoryImage: UIImageView!
    
    @IBOutlet weak var PriceLabel: UILabel!
    
    @IBOutlet weak var HeartButton: CheckBox!
    
    @IBOutlet weak var InterestPeople: UILabel!
    
    @IBOutlet weak var WritingTime: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

        HeartButton.isChecked = false
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    
    @IBAction func isClicked(_ sender: Any) {
        
        print("button is \(HeartButton.isChecked)")
        
        let appDele = UIApplication.shared.delegate as! AppDelegate

        switch HeartButton.isChecked {
            case true:
                InterestPeople.text = "0"
                if let myCell = HeartButton.myCell, let indexPath = HeartButton.myTable?.indexPath(for: myCell) {
                    print("I am in row \(indexPath.row)")
                    appDele.todos[indexPath.row].interest = "no"
                }
            case false:
                InterestPeople.text = "1"
            
                if let myCell = HeartButton.myCell, let indexPath = HeartButton.myTable?.indexPath(for: myCell) {
                    
                    appDele.todos[indexPath.row].interest = "yes"
                }
            
        }

        
    }
    
}

