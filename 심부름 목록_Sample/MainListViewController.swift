//
//  MainListViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi008 on 2017. 8. 7..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class MainListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var MainTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let appDele = UIApplication.shared.delegate as! AppDelegate
        return appDele.todos.count
        
//        return Title_Data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)  as! MainListTableViewCell
        
        let appDele = UIApplication.shared.delegate as! AppDelegate
        let todo = appDele.todos[indexPath.row]
        
        Cell.TitleLabel.text = todo.title
        Cell.DetailLabel.text = todo.detail
        Cell.CategoryImage.image = UIImage(named: todo.category)
        Cell.PriceLabel.text = todo.price
        Cell.ConfidenceStarImage.image = UIImage(named: todo.confidence)//작동안함
        Cell.LevelStarImage.image = UIImage(named: todo.level)
        Cell.WritingTime.text = todo.writing
        //하트버튼 체크
        
        return Cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //memo와 연결
        UserDefaults.standard.set(indexPath.row, forKey: "Order")
        UserDefaults.standard.synchronize()
        
        //TOPOST 말고 detailview
        //performSegue(withIdentifier: "ToDetail", sender: self)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

    //뷰 컨트롤러가 생성될 때 한 번만 실행 따라서 초기화할 때 사용
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    //뷰 컨트롤러가 화면에 나타나기 직전에 실행
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let tableView = MainTableView {
            //let dataSource = tableView.dataSource! as UITableViewDataSource
            //dataSource.prepareEntries()
            tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//table view end

    
        
    
}
