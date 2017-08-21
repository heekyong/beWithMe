//
//  LogInViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi011 on 2017. 8. 11..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var NID: UITextField!
    @IBOutlet weak var NPSW: UITextField!
    
    @IBAction func LoadValue(_ sender: Any) {
        
//        UserDefaults.standard.set(NID, forkey:"ID")
//        UserDefaults.standard.set(NPSW, forkey:"PSW")
        //텍스트필드에 값 설정
//        NID.text = N_ID
//        NPSW.text = N_PSW
        
    }
    
    @IBAction func SaveValue(_ sender: Any) {
        //loadvalue function 유저디폴트에서 값 읽어오기

        //텍스트필드 값 얻어서
//        let N_ID = NID.text
//            let N_PSW = NPSW.text
        
        //유저디폴트에 저장
//        UserDefaults.standard.set(NID, forkey:"ID")
 //       UserDefaults.standard.set(NPSW, forkey:"PSW")
//        setting.synchronize()

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
