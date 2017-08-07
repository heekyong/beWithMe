//
//  MainListViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi008 on 2017. 8. 7..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class MainListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    let simData = [ "Request 1", "Request 2", "Request 3", "Request 4"]
    let detailData = [ "texttext 1", "texttext 2", "texttext 3", "texttext 4" ]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mCell = tableView.dequeueReusableCell(withIdentifier: "mainListCell", for: indexPath) as! MainListTableViewCell
        
        mCell.mTitleLabel.text = simData [indexPath.row]
        mCell.mDetailLabel.text = detailData [indexPath.row]
        
       
        //mainCell.<lable>.<text> = ㅇㅇㅇ + String(indexPath.row)
        return mCell
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
