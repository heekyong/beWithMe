//
//  History_AllViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 19..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class History_AllViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var HistoryAllTableView: UITableView!
    
    
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
        return appDele.myHistory.count    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let CellA = tableView.dequeueReusableCell(withIdentifier: "CellA", for: indexPath) as! HistoryTableViewCell
        
        let appDele = UIApplication.shared.delegate as! AppDelegate
        
        let historyAllObject = appDele.myHistory[indexPath.row]
        
        
        //CellA.bgImage.image = UIImage(named: historyAllObject.bg)
        CellA.priceImage.image = UIImage(named: historyAllObject.pim)
        
        CellA.priceLabel.text = historyAllObject.price
        CellA.dateLabel.text = historyAllObject.date
        
        CellA.titleLabel.text = historyAllObject.title
        CellA.iconImage.image = UIImage(named: historyAllObject.icon)
        
        CellA.cateLabel.text = historyAllObject.cate
        CellA.statusLabel.text = historyAllObject.status
        
        
        return CellA
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let tableView = HistoryAllTableView {
            //let dataSource = tableView.dataSource! as UITableViewDataSource
            //dataSource.prepareEntries()
            tableView.reloadData()
        }
    }

}
