//
//  onGoingViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 19..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class onGoingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var ongoingtable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let appDele = UIApplication.shared.delegate as! AppDelegate
        let myonGoing = appDele.todos.filter { $0.interest == "yes" }
        return myonGoing.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let CellO = tableView.dequeueReusableCell(withIdentifier: "CellE", for: indexPath) as! onGoingTableViewCell
        
        let appDele = UIApplication.shared.delegate as! AppDelegate
        
        var myonGoingObject = appDele.ongoing[indexPath.row]
        
        CellO.titleLabel.text = myonGoingObject.title
        CellO.detailLabel.text = myonGoingObject.detail
        CellO.priceLabel.text = myonGoingObject.price
        CellO.cateImage.image = UIImage(named: myonGoingObject.category)
        CellO.levelImage.image = UIImage(named: myonGoingObject.level)
        CellO.confidenceImage.image = UIImage(named: myonGoingObject.confidence)
        
        
        return CellO
        
    }

    override func viewDidAppear(_ animated: Bool) {
        if let tableView = ongoingtable {
            //let dataSource = tableView.dataSource! as UITableViewDataSource
            //dataSource.prepareEntries()
            tableView.reloadData()
        }
    }

}
