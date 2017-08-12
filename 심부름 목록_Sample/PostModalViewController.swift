

import UIKit

class PostModalViewController: UIViewController {

    @IBOutlet weak var ModalTitle: UITextView!
    @IBOutlet weak var ModalContent: UITextView!
    
    @IBAction func SaveModalPost(_ sender: Any) {
        
        let N_Title = ModalTitle.text
        let N_Content = ModalContent.text
        
        //모달에 쓰여진 값들을 유저디폴트에 저장하기
        UserDefaults.standard.set(N_Title, forKey: "title")
        UserDefaults.standard.set(N_Content, forKey: "content")
        UserDefaults.standard.set("pointer", forKey: "category")//걍 임의로 포인터라고 지정함.
        UserDefaults.standard.synchronize()
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
