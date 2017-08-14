//
//  SegmentHistoryViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 14..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class SegmentHistoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       Segment.selectedSegmentIndex = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
    
    @IBOutlet weak var Segment: UISegmentedControl!
    @IBOutlet weak var Seg7Table: UIView!
    @IBOutlet weak var Seg30Table: UIView!
    @IBOutlet weak var SegAllTable: UIView!
    
    @IBAction func IndexChanged(_ sender: Any) {
        switch Segment.selectedSegmentIndex {
        case 0:
            Seg7Table.isHidden = false
            Seg30Table.isHidden = true
            SegAllTable.isHidden = true
        case 1:
            Seg7Table.isHidden = true
            Seg30Table.isHidden = false
            SegAllTable.isHidden = true

        case 2:
            Seg7Table.isHidden = true
            Seg30Table.isHidden = true
            SegAllTable.isHidden = false

        default:
            break;
        }

    }

}
