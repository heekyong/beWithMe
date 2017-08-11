

import UIKit

class PostModalViewController: UIViewController {

    @IBOutlet weak var ModalTitle: UITextView!
    @IBOutlet weak var ModalContent: UITextView!
    
    @IBAction func SaveModalPost(_ sender: Any) {
        
        let N_Title = ModalTitle.text
        let N_Content = ModalContent.text
        
        let setting = UserDefaults.standard
//        setting.set(N_Title, forkey:"Title")
//        setting.set(N_Content, forkey:"Content") //왜 오류?
//        setting.synchronize()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

           }

    @IBAction func Cancel(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        //모달디스미스
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
