

import UIKit

class PostModalViewController: UIViewController {

    @IBOutlet weak var ModalTitle: UITextView!
    @IBOutlet weak var ModalContent: UITextView!
    @IBOutlet weak var ModalImage: UIImageView!
    
    @IBAction func SaveModalPost(_ sender: Any) {
        
        let N_Title = ModalTitle.text
        let N_Content = ModalContent.text
        
        //모달에 쓰여진 값들을 유저디폴트에 저장하기
        UserDefaults.standard.set(N_Title, forKey: "title")
        UserDefaults.standard.set(N_Content, forKey: "content")
        //UserDefaults.standard.set("pointer", forKey: "category")//걍 임의로 포인터라고 지정함.
        UserDefaults.standard.synchronize()
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

           }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //유저디폴트가 nil이 아니라면 카테고리 미리보기에 업데이트
        if let Modal_Category = UserDefaults.standard.object(forKey: "category")
        {
            ModalImage.image = UIImage(named: Modal_Category as! String)
        }
        
        
    }

    @IBAction func Cancel(_ sender: Any) {
        //모달디스미스
        self.dismiss(animated: true, completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
