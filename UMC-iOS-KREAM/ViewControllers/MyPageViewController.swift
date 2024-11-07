import UIKit

class MyPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = myPageView;
    }
    
    private lazy var myPageView: MyPageView = {
        let myPageView = MyPageView()
        myPageView.profileManagementButton.addTarget(self, action: #selector(profileManagementButtonTapped), for: .touchUpInside)
        return myPageView
    }()
    
    @objc private func profileManagementButtonTapped() {
        let editProfileViewController = EditProfileViewController()
        editProfileViewController.profileImage = myPageView.profileImageView.image
        self.navigationController?.pushViewController(editProfileViewController, animated: true)
    }
}

