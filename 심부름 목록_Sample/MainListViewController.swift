//
//  MainListViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi008 on 2017. 8. 7..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class MainListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
// 소희님 코드 잠시 주석
//    let simData = [ "Request 1", "Request 2", "Request 3", "Request 4"]
//    let detailData = [ "texttext 1", "texttext 2", "texttext 3", "texttext 4" ]
    
    @IBAction func NewPostButton(_ sender: Any) {
        UserDefaults.standard.set(-1, forKey: "PostNumber")
    }
    
    var PostData = [String]()
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//소희님 코드 잠시 주석
//        return simData.count
        
        PostData = UserDefaults.standard.object(forKey: "PostData") as? [String] ?? [String]()
        return PostData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
// 이전에 소희님이 작성하신 코드 잠시만 주석처리 해놨어욤
//        let mCell = tableView.dequeueReusableCell(withIdentifier: "mainListCell", for: indexPath) as! MainListTableViewCell
//        
//        mCell.mTitleLabel.text = simData [indexPath.row]
//        mCell.mDetailLabel.text = detailData [indexPath.row]
//        
//        //mainCell.<lable>.<text> = ㅇㅇㅇ + String(indexPath.row)
//        return mCell
        
        
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MainListTableViewCell
        
        PostData = UserDefaults.standard.object(forKey: "PostData") as? [String] ?? [String]()
        Cell.TitleLabel.text = PostData[indexPath.row]
        return Cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let PostNumber = indexPath.row
        UserDefaults.standard.set(PostNumber, forKey: "PostNumber")
        self.performSegue(withIdentifier: "ToPost", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
