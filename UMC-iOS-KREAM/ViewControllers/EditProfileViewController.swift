import UIKit

class EditProfileViewController: UIViewController {
    
    public var profileImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = editProfileView;
        
        let defaults = UserDefaults.standard
        editProfileView.emailField.text = defaults.string(forKey: "id")
        editProfileView.pwdField.text = defaults.string(forKey: "pwd")
        
        if let data = profileImage {
            editProfileView.profileImageView.image = data
        }
    }
    private var _isEditing: Bool = false
    
    private lazy var editProfileView: EditProfileView = {
        let view = EditProfileView()
        view.emailChangeButton.addTarget(self, action: #selector(editButtonTapped), for: .touchUpInside)
        view.pwdChangeButton.addTarget(self, action: #selector(editButtonTapped), for: .touchUpInside)
        return view
    }()
    
    @objc private func editButtonTapped() {
        if _isEditing {
            let defaults = UserDefaults.standard
            defaults.set(editProfileView.emailField.text, forKey: "id")
            defaults.set(editProfileView.pwdField.text, forKey: "pwd")
            
            _isEditing = false
            editProfileView.emailField.isUserInteractionEnabled = false
            editProfileView.pwdField.isUserInteractionEnabled = false
            editProfileView.emailChangeButton.setTitle("변경", for: .normal)
            editProfileView.pwdChangeButton.setTitle("변경", for: .normal)
        } else {
            _isEditing = true
            editProfileView.emailField.isUserInteractionEnabled = true
            editProfileView.pwdField.isUserInteractionEnabled = true
            editProfileView.emailField.text = ""
            editProfileView.pwdField.text = ""
            editProfileView.emailChangeButton.setTitle("확인", for: .normal)
            editProfileView.pwdChangeButton.setTitle("확인", for: .normal)
        }
    }
}
