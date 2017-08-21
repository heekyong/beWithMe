//
//  SegmentOnGoingViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 19..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class SegmentOnGoingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Segment.selectedSegmentIndex = 0
        

           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    
    @IBOutlet weak var Segment: UISegmentedControl!
    @IBOutlet weak var SegOnGoingTable: UIView!
    @IBOutlet weak var SegInterestTable: UIView!
    
    
    @IBAction func IndexChanged(_ sender: Any) {
        
        switch Segment.selectedSegmentIndex {
        case 0:
            SegOnGoingTable.isHidden = false
            SegInterestTable.isHidden = true
            
        case 1:
            SegOnGoingTable.isHidden = true
            SegInterestTable.isHidden = false
            
            
        default:
            break;
            
        }
    
   
    }
}
