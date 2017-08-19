//
//  SegmentHistoryViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 14..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class SegmentHistoryViewController: UIViewController {

    @IBOutlet weak var myMoney: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Segment.selectedSegmentIndex = 0

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
    
    @IBOutlet weak var Segment: UISegmentedControl!
    
    @IBOutlet weak var SegIncomeTable: UIView!
    @IBOutlet weak var SegExpendTable: UIView!
    @IBOutlet weak var SegAllTable: UIView!
    
    @IBAction func IndexChanged(_ sender: Any) {
        
        switch Segment.selectedSegmentIndex {
        case 0:
            SegIncomeTable.isHidden = false
            SegExpendTable.isHidden = true
            SegAllTable.isHidden = true
        case 1:
            SegIncomeTable.isHidden = true
            SegExpendTable.isHidden = false
            SegAllTable.isHidden = true
        case 2:
            SegIncomeTable.isHidden = true
            SegExpendTable.isHidden = true
            SegAllTable.isHidden = false
        default:
            break;
        }
        
    }
    
    
    
    @IBAction func myAccount(_ sender: Any) {
        
        myMoney.text = "0"
        let alert = UIAlertController(title: "Alert", message: "내 계좌로 송금되었습니다.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
}
