
import UIKit
import RxSwift
import RxRelay

class A2AQandaharDelView: UIView {
    
    var block: (() -> Void)?
    var block1: (() -> Void)?
    
    let rankBag = DisposeBag()
    
    lazy var iaafView: UIImageView = {
        let iaafView = UIImageView()
        iaafView.contentMode = .scaleAspectFit
        iaafView.isUserInteractionEnabled = true
        return iaafView
    }()
    
    lazy var btn1: UIButton = {
        let btn1 = UIButton(type: .custom)
        return btn1
    }()
    
    lazy var btn2: UIButton = {
        let btn2 = UIButton(type: .custom)
        btn2.setImage(UIImage(named: "nearestNameAltcancel"), for: .normal)
        return btn2
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(iaafView)
        iaafView.addSubview(btn1)
        iaafView.addSubview(btn2)
        
        iaafView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.size.equalTo(CGSize(width: 345, height: 363))
        }
        btn1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.size.equalTo(CGSize(width: 320, height: 56))
            make.top.equalToSuperview().offset(223)
        }
        btn2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.size.equalTo(CGSize(width: 320, height: 56))
            make.top.equalTo(btn1.snp.bottom).offset(13)
        }
        
        btn1.rx.tap.subscribe(onNext: { [weak self] in
            self?.block?()
        }).disposed(by: rankBag)
        btn2.rx.tap.subscribe(onNext: { [weak self] in
            self?.block1?()
        }).disposed(by: rankBag)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}


class feifjJIongView: UIView {
    
    lazy var minelabel: UILabel = {
        let minelabel = UILabel()
        minelabel.text = "Mine"
        minelabel.textColor = UIColor.white
        minelabel.textAlignment = .center
        minelabel.font = UIFont(name: wackoDisplay, size: 30)
        return minelabel
    }()
    
    lazy var granularityView: UIImageView = {
        let granularityView = UIImageView()
        granularityView.image = UIImage(named: "assignmentAddBbimageimad")
        return granularityView
    }()
    
    lazy var habaneroView: UIImageView = {
        let habaneroView = UIImageView()
        habaneroView.image = UIImage(named: "refactoringLeftLlbasebg")
        return habaneroView
    }()
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.contentInsetAdjustmentBehavior = .never
        scrollView.backgroundColor = .clear
        return scrollView
    }()
    
    lazy var iaafView: UIImageView = {
        let iaafView = UIImageView()
        iaafView.image = UIImage(named: "rapcIconBgimagecen")
        return iaafView
    }()
    
    lazy var revokeMlabel: UILabel = {
        let revokeMlabel = UILabel()
        let phone = UserDefaults.standard.object(forKey: LOGIN_LOGIN) as? String ?? ""
        revokeMlabel.text = phone
        revokeMlabel.textColor = UIColor.init(cssStr: "#0F0C03")
        revokeMlabel.textAlignment = .center
        revokeMlabel.font = UIFont(name: wackoDisplay, size: 18)
        return revokeMlabel
    }()
    
    lazy var macaberView: UIImageView = {
        let macaberView = UIImageView()
        macaberView.image = UIImage(named: "qandaharIconBgimageimface")
        macaberView.isUserInteractionEnabled = true
        return macaberView
    }()
    
    lazy var itemView1: eufnadefItemView = {
        let itemView1 = eufnadefItemView()
        itemView1.revokeMlabel.text = "Order Records"
        return itemView1
    }()
    
    lazy var itemView2: eufnadefItemView = {
        let itemView2 = eufnadefItemView()
        itemView2.revokeMlabel.text = "The Official Website"
        return itemView2
    }()
    
    lazy var itemView3: eufnadefItemView = {
        let itemView3 = eufnadefItemView()
        itemView3.revokeMlabel.text = "Connect With Us"
        return itemView3
    }()
    
    lazy var itemView4: eufnadefItemView = {
        let itemView4 = eufnadefItemView()
        itemView4.revokeMlabel.text = "Settings"
        return itemView4
    }()
    
    lazy var itemView5: eufnadefItemView = {
        let itemView5 = eufnadefItemView()
        itemView5.revokeMlabel.text = "Delete Account"
        return itemView5
    }()
    
    lazy var itemView6: eufnadefItemView = {
        let itemView6 = eufnadefItemView()
        itemView6.revokeMlabel.text = "Log Out"
        return itemView6
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(habaneroView)
        addSubview(granularityView)
        addSubview(scrollView)
        scrollView.addSubview(minelabel)
        scrollView.addSubview(iaafView)
        iaafView.addSubview(revokeMlabel)
        scrollView.addSubview(macaberView)
        macaberView.addSubview(itemView1)
        macaberView.addSubview(itemView2)
        macaberView.addSubview(itemView3)
        macaberView.addSubview(itemView4)
        macaberView.addSubview(itemView5)
        macaberView.addSubview(itemView6)
        habaneroView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        granularityView.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview()
            make.height.equalTo(339)
        }
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        minelabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(dfrtusdejhedhei.wacoLinkageIllinois() + 15)
            make.height.equalTo(32)
        }
        iaafView.snp.makeConstraints { make in
            make.height.equalTo(163)
            make.top.equalTo(minelabel.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalTo(335)
        }
        revokeMlabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(iaafView.snp.top).offset(115)
            make.height.equalTo(40)
        }
        
        macaberView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(iaafView.snp.bottom).offset(17)
            make.width.equalTo(340)
            make.height.equalTo(540)
            make.bottom.equalToSuperview().offset(-20)
        }
        
        itemView1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(14)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(50)
        }
        itemView2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(itemView1.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(46)
        }
        itemView3.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(itemView2.snp.bottom).offset(24)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(46)
        }
        itemView4.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(itemView3.snp.bottom).offset(24)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(46)
        }
        
        itemView5.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(itemView4.snp.bottom).offset(24)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(46)
        }
        itemView6.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(itemView5.snp.bottom).offset(24)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(46)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class eufnadefItemView: UIView {

    lazy var definitionView: UIView = {
        let definitionView = UIView()
        definitionView.layer.cornerRadius = 4
        definitionView.backgroundColor = UIColor.init(cssStr: "#E4FEG5")
        return definitionView
    }()

    lazy var revokeMlabel: UILabel = {
        let revokeMlabel = UILabel()
        revokeMlabel.textColor = UIColor.init(cssStr: "#000011")
        revokeMlabel.textAlignment = .left
        revokeMlabel.font = UIFont(name: wackoDisplay, size: 16)
        return revokeMlabel
    }()
    
    lazy var coffView: UIImageView = {
        let coffView = UIImageView()
        coffView.image = UIImage(named: "binBackRighticon")
        return coffView
    }()
    
    lazy var btn: UIButton = {
        let btn = UIButton(type: .custom)
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(definitionView)
        definitionView.addSubview(revokeMlabel)
        definitionView.addSubview(coffView)
        definitionView.addSubview(btn)
        definitionView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.left.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalTo(50)
        }
        revokeMlabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.bottom.top.equalToSuperview()
            make.right.equalToSuperview().offset(-60)
        }
        coffView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().offset(-16)
            make.size.equalTo(CGSize(width: 16, height: 16))
        }
        btn.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
