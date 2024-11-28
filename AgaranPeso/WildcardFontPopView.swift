
import UIKit

class popxingjixea645View: UIView {
    
    lazy var jacalScro: UIScrollView = {
        let jacalScro = UIScrollView()
        jacalScro.backgroundColor = .white
        jacalScro.showsHorizontalScrollIndicator = false
        jacalScro.showsVerticalScrollIndicator = false
        jacalScro.contentInsetAdjustmentBehavior = .never
        return jacalScro
    }()
    
    lazy var revokeMlabel: UILabel = {
        let revokeMlabel = UILabel()
        revokeMlabel.numberOfLines = 0
        revokeMlabel.text = "Please upload the front side of your identification document."
        revokeMlabel.textColor = UIColor.init(cssStr: "#000011")
        revokeMlabel.textAlignment = .left
        revokeMlabel.font = UIFont(name: wackoDisplay, size: 14)
        return revokeMlabel
    }()
    
    lazy var castingBtn: UIButton = {
        let castingBtn = UIButton(type: .custom)
        castingBtn.setImage(UIImage(named: "haarlemBackCanimageb"), for: .normal)
        return castingBtn
    }()
    
    lazy var iaafView: UIImageView = {
        let iaafView = UIImageView()
        return iaafView
    }()
    
    lazy var ctImageView1: UIImageView = {
        let ctImageView1 = UIImageView()
        ctImageView1.image = UIImage(named: "sabbatarianRightAmbidimage")
        ctImageView1.contentMode = .scaleAspectFill
        return ctImageView1
    }()
    
    lazy var uatBtn: UIButton = {
        let uatBtn = UIButton(type: .custom)
        uatBtn.setTitle("ALBUM", for: .normal)
        uatBtn.titleLabel?.font = UIFont(name: wackoDisplay, size: 18)
        uatBtn.backgroundColor = .white
        uatBtn.layer.borderWidth = 2
        uatBtn.setTitleColor(UIColor.init(cssStr: "#222222"), for: .normal)
        uatBtn.layer.borderColor = UIColor.init(cssStr: "#222222")?.cgColor
        return uatBtn
    }()
    
    lazy var nextBtn1: UIButton = {
        let nextBtn1 = UIButton(type: .custom)
        nextBtn1.setTitleColor(UIColor.init(cssStr: "#1EFB91"), for: .normal)
        nextBtn1.setTitle("SHOOT", for: .normal)
        nextBtn1.titleLabel?.font = UIFont(name: wackoDisplay, size: 18)
        nextBtn1.backgroundColor = UIColor.init(cssStr: "#222222")
        return nextBtn1
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(jacalScro)
        jacalScro.addSubview(revokeMlabel)
        jacalScro.addSubview(castingBtn)
        jacalScro.addSubview(iaafView)
        jacalScro.addSubview(ctImageView1)
        jacalScro.addSubview(uatBtn)
        jacalScro.addSubview(nextBtn1)
        jacalScro.snp.makeConstraints { make in
            make.bottom.left.equalToSuperview()
            make.width.equalTo(informationWidth)
            make.top.equalToSuperview().offset(215)
        }
        revokeMlabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(19)
            make.width.equalTo(informationWidth - 84)
        }
        castingBtn.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(19)
            make.left.equalTo(informationWidth - 40)
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        iaafView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(79)
            make.left.equalToSuperview().offset(15)
            make.width.equalTo(informationWidth - 30)
            make.height.equalTo(212)
        }
        ctImageView1.snp.makeConstraints { make in
            make.top.equalTo(iaafView.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(15)
            make.width.equalTo(informationWidth - 30)
            make.height.equalTo(106)
        }
        uatBtn.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(12)
            make.width.equalTo(informationWidth - 25)
            make.top.equalTo(ctImageView1.snp.bottom).offset(42)
            make.height.equalTo(56)
        }
        nextBtn1.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(12)
            make.width.equalTo(informationWidth - 25)
            make.top.equalTo(uatBtn.snp.bottom).offset(15)
            make.height.equalTo(56)
            make.bottom.equalToSuperview().offset(-30)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Popxigdid4veView: UIView {
    
    lazy var jacalScro: UIScrollView = {
        let jacalScro = UIScrollView()
        jacalScro.backgroundColor = .white
        jacalScro.showsHorizontalScrollIndicator = false
        jacalScro.showsVerticalScrollIndicator = false
        jacalScro.contentInsetAdjustmentBehavior = .never
        return jacalScro
    }()
    
    lazy var revokeMlabel: UILabel = {
        let revokeMlabel = UILabel()
        revokeMlabel.numberOfLines = 0
        revokeMlabel.text = "Please upload a copy of the front side of your identification."
        revokeMlabel.textColor = UIColor.init(cssStr: "#000011")
        revokeMlabel.textAlignment = .left
        revokeMlabel.font = UIFont(name: wackoDisplay, size: 14)
        return revokeMlabel
    }()
    
    lazy var castingBtn: UIButton = {
        let castingBtn = UIButton(type: .custom)
        castingBtn.setImage(UIImage(named: "haarlemBackCanimageb"), for: .normal)
        return castingBtn
    }()
    
    lazy var iaafView: UIImageView = {
        let iaafView = UIImageView()
        iaafView.image = UIImage(named: "BaaroqueBackGrohellimge")
        iaafView.contentMode = .scaleAspectFill
        return iaafView
    }()
    
    lazy var ctImageView1: UIImageView = {
        let ctImageView1 = UIImageView()
        ctImageView1.image = UIImage(named: "FetchBgGrhellcaim")
        ctImageView1.contentMode = .scaleAspectFill
        return ctImageView1
    }()
    
    lazy var nextBtn1: UIButton = {
        let nextBtn1 = UIButton(type: .custom)
        nextBtn1.setTitleColor(UIColor.init(cssStr: "#1EFB88"), for: .normal)
        nextBtn1.setTitle("SUBMIT", for: .normal)
        nextBtn1.titleLabel?.font = UIFont(name: wackoDisplay, size: 18)
        nextBtn1.backgroundColor = UIColor.init(cssStr: "#222233")
        return nextBtn1
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(jacalScro)
        jacalScro.addSubview(revokeMlabel)
        jacalScro.addSubview(castingBtn)
        jacalScro.addSubview(iaafView)
        jacalScro.addSubview(ctImageView1)
        jacalScro.addSubview(nextBtn1)
        jacalScro.snp.makeConstraints { make in
            make.bottom.left.equalToSuperview()
            make.width.equalTo(informationWidth)
            make.top.equalToSuperview().offset(295)
        }
        revokeMlabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(19)
            make.width.equalTo(informationWidth - 84)
        }
        castingBtn.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(19)
            make.left.equalTo(informationWidth - 40)
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        iaafView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(79)
            make.left.equalToSuperview().offset(15)
            make.width.equalTo(informationWidth - 30)
            make.height.equalTo(212)
        }
        ctImageView1.snp.makeConstraints { make in
            make.top.equalTo(iaafView.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(15)
            make.width.equalTo(informationWidth - 30)
            make.height.equalTo(106)
        }
        nextBtn1.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(12)
            make.width.equalTo(informationWidth - 25)
            make.top.equalTo(ctImageView1.snp.bottom).offset(30)
            make.height.equalTo(56)
            make.bottom.equalToSuperview().offset(-30)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class PopNameIDCardView: UIView {
    
    var model: preferredaModel? {
        didSet {
            guard let model = model else { return }
            name1.uatBtn.setTitle(model.deepseats ?? "", for: .normal)
            name2.accessInputtx.text = model.aquizzical ?? ""
            name3.accessInputtx.text = model.squatty ?? ""
        }
    }
    
    lazy var jacalScro: UIScrollView = {
        let jacalScro = UIScrollView()
        jacalScro.backgroundColor = .white
        jacalScro.showsHorizontalScrollIndicator = false
        jacalScro.showsVerticalScrollIndicator = false
        jacalScro.contentInsetAdjustmentBehavior = .never
        return jacalScro
    }()
    
    lazy var revokeMlabel: UILabel = {
        let revokeMlabel = UILabel()
        revokeMlabel.numberOfLines = 0
        revokeMlabel.text = "Confirm the provided information, please."
        revokeMlabel.textColor = UIColor.init(cssStr: "#000011")
        revokeMlabel.textAlignment = .left
        revokeMlabel.font = UIFont(name: wackoDisplay, size: 14)
        return revokeMlabel
    }()
    
    lazy var castingBtn: UIButton = {
        let castingBtn = UIButton(type: .custom)
        castingBtn.setImage(UIImage(named: "haarlemBackCanimageb"), for: .normal)
        return castingBtn
    }()
    
    lazy var name1: L5Nae3tcView = {
        let name1 = L5Nae3tcView(frame: .zero, ad: .btn)
        name1.revokeMlabel.text = "Date"
        return name1
    }()
    
    lazy var name2: L5Nae3tcView = {
        let name2 = L5Nae3tcView(frame: .zero, ad: .tx)
        name2.revokeMlabel.text = "Name"
        return name2
    }()
    
    lazy var name3: L5Nae3tcView = {
        let name3 = L5Nae3tcView(frame: .zero, ad: .tx)
        name3.revokeMlabel.text = "Number"
        return name3
    }()
    
    lazy var accessInputtx: UITextField = {
        let accessInputtx = UITextField()
        accessInputtx.font = UIFont(name: wackoDisplay, size: 16)
        accessInputtx.textColor = UIColor.init(cssStr: "#000011")?.withAlphaComponent(0.5)
        accessInputtx.backgroundColor = .purple
        return accessInputtx
    }()
    
    lazy var nextBtn1: UIButton = {
        let nextBtn1 = UIButton(type: .custom)
        nextBtn1.setTitleColor(UIColor.init(cssStr: "#1EFC91"), for: .normal)
        nextBtn1.setTitle("SUBMIT", for: .normal)
        nextBtn1.titleLabel?.font = UIFont(name: wackoDisplay, size: 18)
        nextBtn1.backgroundColor = UIColor.init(cssStr: "#222332")
        return nextBtn1
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(jacalScro)
        jacalScro.addSubview(revokeMlabel)
        jacalScro.addSubview(castingBtn)
        jacalScro.addSubview(name1)
        jacalScro.addSubview(name2)
        jacalScro.addSubview(name3)
        jacalScro.addSubview(accessInputtx)
        jacalScro.addSubview(nextBtn1)
        jacalScro.snp.makeConstraints { make in
            make.bottom.left.equalToSuperview()
            make.width.equalTo(informationWidth)
            make.top.equalToSuperview().offset(300)
        }
        revokeMlabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(19)
            make.width.equalTo(informationWidth - 84)
        }
        castingBtn.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(19)
            make.left.equalTo(informationWidth - 40)
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        
        name1.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.height.equalTo(95)
            make.width.equalTo(informationWidth)
            make.top.equalTo(revokeMlabel.snp.bottom).offset(40)
        }
        name2.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.height.equalTo(95)
            make.width.equalTo(informationWidth)
            make.top.equalTo(name1.snp.bottom).offset(15)
        }
        name3.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.height.equalTo(95)
            make.width.equalTo(informationWidth)
            make.top.equalTo(name2.snp.bottom).offset(15)
        }
        nextBtn1.snp.makeConstraints { make in
            make.top.equalTo(name3.snp.bottom).offset(49)
            make.left.equalToSuperview().offset(12)
            make.width.equalTo(informationWidth - 25)
            make.height.equalTo(56)
            make.bottom.equalToSuperview().offset(-30)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

enum Bgtype {
    case tx
    case btn
}

class L5Nae3tcView: UIView {
    
    var ad: Bgtype = .tx
    
    lazy var revokeMlabel: UILabel = {
        let revokeMlabel = UILabel()
        revokeMlabel.textColor = UIColor.init(cssStr: "#000011")
        revokeMlabel.textAlignment = .left
        revokeMlabel.font = UIFont(name: wackoDisplay, size: 16)
        return revokeMlabel
    }()
    
    lazy var definitionView: UIView = {
        let definitionView = UIView()
        definitionView.backgroundColor = .init(cssStr: "#F3F8F5")
        definitionView.layer.cornerRadius = 4
        return definitionView
    }()
    
    lazy var accessInputtx: UITextField = {
        let accessInputtx = UITextField()
        accessInputtx.font = UIFont(name: wackoDisplay, size: 16)
        accessInputtx.textColor = UIColor.init(cssStr: "#000011")?.withAlphaComponent(0.5)
        return accessInputtx
    }()
    
    lazy var uatBtn: UIButton = {
        let uatBtn = UIButton(type: .custom)
        uatBtn.contentHorizontalAlignment = .left
        uatBtn.setTitleColor(UIColor.init(cssStr: "#000011")?.withAlphaComponent(0.5), for: .normal)
        uatBtn.titleLabel?.font = UIFont(name: wackoDisplay, size: 16)
        return uatBtn
    }()
    
    init(frame: CGRect, ad: Bgtype) {
        self.ad = ad
        super.init(frame: frame)
        i2oLibrateIde(from: ad)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func i2oLibrateIde(from type: Bgtype) {
        addSubview(revokeMlabel)
        addSubview(definitionView)
        revokeMlabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(20)
        }
        definitionView.snp.makeConstraints { make in
            make.width.equalTo(informationWidth - 30)
            make.left.equalToSuperview().offset(15)
            make.top.equalTo(revokeMlabel.snp.bottom).offset(8)
            make.height.equalTo(65)
        }
        if type == .tx {
            definitionView.addSubview(accessInputtx)
            accessInputtx.isUserInteractionEnabled = true
            accessInputtx.snp.makeConstraints { make in
                make.top.bottom.equalToSuperview()
                make.width.equalTo(informationWidth - 50)
                make.left.equalToSuperview().offset(12)
            }
        }else {
            definitionView.addSubview(uatBtn)
            uatBtn.snp.makeConstraints { make in
                make.top.bottom.equalToSuperview()
                make.width.equalTo(informationWidth - 50)
                make.left.equalToSuperview().offset(12)
            }
        }
        
        
    }

}

