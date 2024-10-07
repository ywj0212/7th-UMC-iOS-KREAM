import UIKit

class LoginViewController: UIViewController {
    
    var data: LoginModel = LoginModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = loginView;
    }
    
    private lazy var loginView: LoginView = {
        let view = LoginView()
        view.idTextField.addTarget(self, action: #selector(setId), for: .editingChanged)
        view.pwdTextField.addTarget(self, action: #selector(setPwd), for: .editingChanged)
        return view
    }()
    
    @objc func setId() {
        self.data.id = loginView.idTextField.text ?? ""
    }
    @objc func setPwd() {
        self.data.pwd = loginView.pwdTextField.text ?? ""
    }
}

