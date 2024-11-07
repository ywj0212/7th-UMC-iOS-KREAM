import UIKit

class SavedCell: UITableViewCell {
    static let identifier = "SavedCell"

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setViews()
        self.setConstaints()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.goodsImageView.image = nil
        self.goodsName.text = nil
        self.goodsDescription.text = nil
        self.goodsPrice.text = nil
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    public func configure(model: GoodsModel) {
        let numberFormatter: NumberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        self.goodsImageView.image = UIImage(named: model.goodsImg)
        self.goodsName.text = model.goodsName
        self.goodsDescription.text = model.goodsDescription
        self.goodsPrice.text = (numberFormatter.string(for: model.goodsPrice) ?? "0") + "원"
    }
    
    let goodsImageView: UIImageView = {
        let imageView = UIImageView()
        
        return imageView
    }()
    
    let goodsName: UILabel = {
        let name = UILabel()
        name.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        name.textColor = .black
        
        return name
    }()
    
    let goodsDescription: UILabel = {
        let description = UILabel()
        description.font = UIFont.systemFont(ofSize: 9, weight: .regular)
        description.textColor = .gray
        description.numberOfLines = 2
        
        return description
    }()
    
    let goodsSaveButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "icon_saved_none"), for: .normal)
        
        return button
    }()
    
    let goodsPrice: UILabel = {
        let price = UILabel()
        price.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        price.textColor = .black
        price.textAlignment = .right
        
        return price
    }()
    
    private func setViews() {
        self.addSubview(goodsImageView)
        self.addSubview(goodsName)
        self.addSubview(goodsDescription)
        self.addSubview(goodsSaveButton)
        self.addSubview(goodsPrice)
    }
    
    private func setConstaints() {
        goodsImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(13)
            $0.leading.equalToSuperview().offset(13)
            $0.bottom.equalToSuperview().inset(14)
            $0.width.equalTo(72)
        }
        
        goodsName.snp.makeConstraints {
            $0.top.equalToSuperview().offset(13)
            $0.leading.equalTo(goodsImageView.snp.trailing).offset(13)
        }
        
        goodsDescription.snp.makeConstraints {
            $0.top.equalTo(goodsName.snp.bottom)
            $0.leading.equalTo(goodsImageView.snp.trailing).offset(13)
            $0.width.equalTo(153)
            $0.height.equalTo(33)
        }
        
        goodsSaveButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(18)
            $0.trailing.equalToSuperview().inset(17)
            $0.width.equalTo(29)
            $0.height.equalTo(26)
        }
        
        goodsPrice.snp.makeConstraints {
            $0.bottom.equalToSuperview().inset(10)
            $0.trailing.equalToSuperview().inset(16)
        }
        
    }
}
