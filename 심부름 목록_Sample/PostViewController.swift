
import UIKit

class PostViewController: UIViewController {

    @IBOutlet weak var TitleTextView: UITextView!
    @IBOutlet weak var PostTextView: UITextView!
    @IBOutlet weak var CategoryImageView: UIImageView!
    @IBOutlet weak var PriceTextView: UILabel!
    @IBOutlet weak var LevelStarImage: UIImageView!
    @IBOutlet weak var ConfidenceStarImage: UIImageView!
    @IBOutlet weak var WritingTimeTextView: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        let appDele = UIApplication.shared.delegate as! AppDelegate
        
        let Order = UserDefaults.standard.object(forKey: "Order") as! Int
        
        //main의 order와 연결
        TitleTextView.text = appDele.todos[Order].title
        PostTextView.text = appDele.todos[Order].detail
        CategoryImageView.image = UIImage(named: appDele.todos[Order].category)
        PriceTextView.text = appDele.todos[Order].price
        LevelStarImage.image = UIImage(named: appDele.todos[Order].level)
        ConfidenceStarImage.image = UIImage(named: appDele.todos[Order].confidence)
        WritingTimeTextView.text = appDele.todos[Order].writing
        
        UserDefaults.standard.removeObject(forKey: "Order")

        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        //UserDefaults.standard.removeObject(forKey: "Order")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Cancel(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)

    }



}
