import UIKit

class MyPageView: UIView {
    let upperUIFrame: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let topComponentGroup: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let topButtonGroup: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let profileInfoGroup: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let profileTextGroup: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let profileButtonGroup: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let followInfoGroup: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let settingButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "setting_btn"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let cameraButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "camera_btn"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "profile_demo")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Jeong_iOS"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let followersLabel: UILabel = {
        let label = UILabel()
        label.text = "팔로워"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let followerCountLabel: UILabel = {
        let label = UILabel()
        label.text = "326"
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let followingLabel: UILabel = {
        let label = UILabel()
        label.text = "팔로잉"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let followingCountLabel: UILabel = {
        let label = UILabel()
        label.text = "20"
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let profileManagementButton: UIButton = {
        let button = UIButton()
        button.setTitle("프로필 관리", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 9, weight: .medium)
        button.backgroundColor = .white
        button.layer.borderWidth = 0.8
        button.layer.borderColor = CGColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let profileShareButton: UIButton = {
        let button = UIButton()
        button.setTitle("프로필 공유", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 9, weight: .medium)
        button.backgroundColor = .white
        button.layer.borderWidth = 0.8
        button.layer.borderColor = CGColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let bottomView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupViews()
        self.setupLayout()
        self.backgroundColor = .gray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        topButtonGroup.addSubview(settingButton)
        topButtonGroup.addSubview(cameraButton)
        topComponentGroup.addSubview(topButtonGroup)
        
        profileInfoGroup.addSubview(profileImageView)
        profileTextGroup.addSubview(nameLabel)
        
        followInfoGroup.addSubview(followersLabel)
        followInfoGroup.addSubview(followerCountLabel)
        followInfoGroup.addSubview(followingLabel)
        followInfoGroup.addSubview(followingCountLabel)
        
        profileTextGroup.addSubview(followInfoGroup)
        profileInfoGroup.addSubview(profileTextGroup)
        topComponentGroup.addSubview(profileInfoGroup)
        
        profileButtonGroup.addSubview(profileManagementButton)
        profileButtonGroup.addSubview(profileShareButton)
        topComponentGroup.addSubview(profileButtonGroup)
        
        upperUIFrame.addSubview(topComponentGroup)
        
        addSubview(upperUIFrame)
        addSubview(bottomView)
    }
    
    private func setupLayout() {
        upperUIFrame.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.height.equalTo(297)
        }
        topComponentGroup.snp.makeConstraints {
            $0.top.equalToSuperview().offset(75)
            $0.leading.equalToSuperview().offset(32.5)
            $0.trailing.equalToSuperview().inset(32.5)
            $0.bottom.equalToSuperview().inset(29)
        }
        topButtonGroup.snp.makeConstraints {
            $0.top.edges.equalToSuperview()
            $0.height.equalTo(25)
            $0.bottom.equalToSuperview().inset(168)
        }
        settingButton.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.width.equalTo(25)
            $0.height.equalTo(25)
        }
        cameraButton.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.width.equalTo(25)
            $0.height.equalTo(25)
        }
        profileInfoGroup.snp.makeConstraints {
            $0.top.equalTo(topButtonGroup.snp.bottom).offset(26)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.height.equalTo(90)
        }
        profileImageView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.height.equalTo(90)
            $0.width.equalTo(90)
        }
        profileTextGroup.snp.makeConstraints {
            $0.top.equalToSuperview().offset(21)
            $0.bottom.equalToSuperview().inset(21)
            $0.leading.equalTo(profileImageView.snp.trailing).offset(18)
            $0.trailing.equalToSuperview()
        }
        nameLabel.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.height.equalTo(23)
        }
        followInfoGroup.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(6)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.height.equalTo(19)
        }
        followersLabel.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.height.equalToSuperview()
        }
        followerCountLabel.snp.makeConstraints {
            $0.leading.equalTo(followersLabel.snp.trailing).offset(3)
            $0.height.equalToSuperview()
        }
        followingLabel.snp.makeConstraints {
            $0.leading.equalTo(followerCountLabel.snp.trailing).offset(8)
            $0.height.equalToSuperview()
        }
        followingCountLabel.snp.makeConstraints {
            $0.leading.equalTo(followingLabel.snp.trailing).offset(3)
            $0.height.equalToSuperview()
        }
        
        profileButtonGroup.snp.makeConstraints {
            $0.top.equalTo(profileInfoGroup.snp.bottom).offset(26)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.height.equalTo(26)
        }
        profileManagementButton.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.height.equalToSuperview()
        }
        profileShareButton.snp.makeConstraints {
            $0.leading.equalTo(profileManagementButton.snp.trailing).offset(14)
            $0.trailing.equalToSuperview()
            $0.width.equalTo(profileManagementButton)
            $0.height.equalToSuperview()
        }
        bottomView.snp.makeConstraints {
            $0.top.equalTo(topComponentGroup.snp.bottom).offset(24)
            $0.bottom.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
        }
    }
}
