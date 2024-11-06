import UIKit

class LoginView: UIView {
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let idLabel: UILabel = {
        let label = UILabel()
        label.text = "이메일 주소"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "예) kream@kream.co.kr"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let pwdLabel: UILabel = {
        let label = UILabel()
        label.text = "비밀번호"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let pwdTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호를 입력해주세요"
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("로그인", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let kakaoLoginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("카카오로 로그인", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.backgroundColor = .white
        button.layer.borderWidth = 1
        button.layer.borderColor = CGColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let appleLoginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Apple로 로그인", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.backgroundColor = .white
//        button.setImage(UIImage(systemName: "apple.logo"), for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = CGColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.setupViews()
        self.setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(logoImageView)
        addSubview(idLabel)
        addSubview(idTextField)
        addSubview(pwdLabel)
        addSubview(pwdTextField)
        addSubview(loginButton)
        addSubview(kakaoLoginButton)
        addSubview(appleLoginButton)
    }
    
    private func setupLayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        logoImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(120)
            $0.centerX.equalToSuperview()
            $0.width.equalToSuperview().offset(287)
            $0.height.equalTo(75)
        }
        idLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(250)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().inset(16)
        }
        idTextField.snp.makeConstraints {
            $0.top.equalTo(idLabel.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(40)
        }
        pwdLabel.snp.makeConstraints {
            $0.top.equalTo(idTextField.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().inset(16)
        }
        pwdTextField.snp.makeConstraints {
            $0.top.equalTo(pwdLabel.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(40)
        }
        loginButton.snp.makeConstraints {
            $0.top.equalTo(pwdTextField.snp.bottom).offset(30)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(50)
        }
        kakaoLoginButton.snp.makeConstraints {
            $0.top.equalTo(loginButton.snp.bottom).offset(87)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(50)
        }
        appleLoginButton.snp.makeConstraints {
            $0.top.equalTo(kakaoLoginButton.snp.bottom).offset(22)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(50)
        }
    }
}
