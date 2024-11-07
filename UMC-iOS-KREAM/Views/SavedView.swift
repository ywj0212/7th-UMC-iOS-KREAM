import UIKit

class SavedView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setViews()
        setConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setViews(){
        self.addSubview(titleLabel)
        self.addSubview(goodsCountLabel)
        self.addSubview(tableView)
    }
    private func setConstraints(){
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(61)
            $0.left.equalToSuperview().offset(10)
            $0.height.equalTo(45)
        }
        goodsCountLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(16)
            $0.left.equalToSuperview().offset(13)
            $0.width.equalTo(55)
            $0.height.equalTo(22)
        }
        tableView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(156)
            $0.left.right.bottom.equalToSuperview()
            $0.width.equalTo(393)
            $0.height.equalTo(99)
        }
    }

    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Saved"
        label.font = .systemFont(ofSize: 28, weight: .bold)
        label.textColor = .black
        return label
    }()

    private lazy var goodsCountLabel: UILabel = {
        let label = UILabel()
        label.text = "전체 10개"
        label.font = .systemFont(ofSize: 14, weight: .medium)
        label.textColor = .black
        return label
    }()
    

    public lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(SavedCell.self, forCellReuseIdentifier: SavedCell.identifier)
        table.separatorStyle = .singleLine
        return table
    }()
}
