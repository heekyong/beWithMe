

import UIKit

class PostModalViewController: UIViewController {

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
