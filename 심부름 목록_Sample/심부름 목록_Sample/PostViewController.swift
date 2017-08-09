//
//  PostViewController.swift
//  심부름 목록_Sample
//
//  Created by cscoi009 on 2017. 8. 9..
//  Copyright © 2017년 연습용. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {
    @IBAction func PostDismissButton(_ sender: Any) {
    }

    //@IBOutlet weak var TitleTextView: UITextField!
    @IBOutlet weak var PostTestView: UITextView!
    
    var PostData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let PostNumber = UserDefaults.standard.object(forKey: "PostNumber") as! Int
        
        if PostNumber == -1 {
            
            PostData = UserDefaults.standard.object(forKey: "PostData") as! [String]
            PostTestView.text = "..."
            
        } else {
            
            PostData = UserDefaults.standard.object(forKey: "PostData") as! [String]
            PostTestView.text = PostData[PostNumber]
            
        }
        
    }

    @IBAction func RegisterButton(_ sender: Any) {
        
        
    //    UserDefaults.standard.set(TitleTextView, forKey: "1")
        
        
        let PostNumber = UserDefaults.standard.object(forKey: "PostNumber") as! Int
        
        if PostNumber == -1 {
            
            PostData.insert(PostTestView.text, at: 0)
            
            UserDefaults.standard.set(PostData, forKey: "PostData")
            
        } else {
            
            PostData.remove(at: PostNumber)
            PostData.insert(PostTestView.text, at: PostNumber)
            UserDefaults.standard.set(PostData, forKey: "PostData")
        }
        
        PostData.insert(PostTestView.text, at: 0)
        UserDefaults.standard.set(PostData, forKey: "PostData")
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    

}
