import UIKit

class LoginViewController: UIViewController {
    
    var data: LoginModel = LoginModel(id: "", pwd: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = loginView;
        
        let defaults = UserDefaults.standard
        if let id = defaults.string(forKey: "id") {
            loginView.idTextField.text = id
        }
        if let pwd = defaults.string(forKey: "pwd") {
            loginView.pwdTextField.text = pwd
        }
    }
    
    private lazy var loginView: LoginView = {
        let view = LoginView()
        view.idTextField.addTarget(self, action: #selector(setId), for: .editingChanged)
        view.pwdTextField.addTarget(self, action: #selector(setPwd), for: .editingChanged)
        view.loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        return view
    }()
    
    @objc func setId() {
        self.data.id = loginView.idTextField.text ?? ""
    }
    @objc func setPwd() {
        self.data.pwd = loginView.pwdTextField.text ?? ""
    }
    
    @objc func login() {
        let defaults = UserDefaults.standard
        
        defaults.set(data.id, forKey: "id")
        defaults.set(data.pwd, forKey: "pwd")
        
        let baseViewController = BaseViewController()
        baseViewController.modalTransitionStyle = .coverVertical
        baseViewController.modalPresentationStyle = .overFullScreen
        present(baseViewController, animated: true, completion: nil)
    }
}

