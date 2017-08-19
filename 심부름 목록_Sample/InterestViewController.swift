//
//  InterestViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 19..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class InterestViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var interesttable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let appDele = UIApplication.shared.delegate as! AppDelegate
        var myonGoing = appDele.todos.filter { $0.interest == "yes" }
        return myonGoing.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let CellO = tableView.dequeueReusableCell(withIdentifier: "CellE", for: indexPath) as! InterestTableViewCell
        
        let appDele = UIApplication.shared.delegate as! AppDelegate
        
        var myonGoing = appDele.todos.filter { $0.interest == "yes" }
        
        let myonGoingObject = myonGoing[indexPath.row]
        
        CellO.titleLabel.text = myonGoingObject.title
        CellO.priceLabel.text = myonGoingObject.price
        CellO.cateImage.image = UIImage(named: myonGoingObject.category)
        CellO.InterestNum.text = "1"//myonGoingObject.title
        
        return CellO
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let tableView = interesttable {
            //let dataSource = tableView.dataSource! as UITableViewDataSource
            //dataSource.prepareEntries()
            tableView.reloadData()
        }
    }


}
