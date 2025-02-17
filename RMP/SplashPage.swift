
import UIKit
import Foundation

class SplashPage: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.welcomeLabel.text = WelcomeMsg
        self.signInBtn.layer.borderWidth = 2
        self.signInBtn.layer.borderColor = UIColor.primaryColour.cgColor
    }
    
    func switchLanguage() {
        if languageManager.getCurrentLanguage() == "hi" {
            self.welcomeLabel.text = languageManager.localizedString(for: "splash_msg")
            self.signInBtn.setTitle(languageManager.localizedString(for: "signin"), for: .normal)
            self.signUpBtn.setTitle(languageManager.localizedString(for: "signup"), for: .normal)
        }
        if languageManager.getCurrentLanguage() == "en" {
            self.welcomeLabel.text = languageManager.localizedString(for: "splash_msg")
            self.signInBtn.setTitle(languageManager.localizedString(for: "signin"), for: .normal)
            self.signUpBtn.setTitle(languageManager.localizedString(for: "signup"), for: .normal)
        }
        
    }
    
    @IBAction func didSignUpBtnTap(_ sender: Any) {
        languageManager.setLanguage("hi")
        self.switchLanguage()
//        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SignUpPage") as? SignUpPage
//        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    @IBAction func didSignInBtnTap(_ sender: Any) {
        languageManager.setLanguage("en")
        self.switchLanguage()
//        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SignInPage") as? SignInPage
//        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}



