
import UIKit

class SignInPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didForgotPwdTap(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ForgotPwdPage") as? ForgotPwdPage
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
