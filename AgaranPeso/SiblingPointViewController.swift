
import UIKit
import RxRelay
import MJRefresh

class SelListView: UIView {
    
    lazy var definitionView: UIView = {
        let definitionView = UIView()
        definitionView.backgroundColor = .white
        return definitionView
    }()
    
    lazy var castingBtn: UIButton = {
        let castingBtn = UIButton(type: .custom)
        castingBtn.adjustsImageWhenHighlighted = false
        return castingBtn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(definitionView)
        definitionView.addSubview(castingBtn)
        
        definitionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        castingBtn.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.size.equalTo(CGSize(width: 375, height: 92))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


class ListView: UIView {
    
    lazy var jacalScro: UIScrollView = {
        let jacalScro = UIScrollView()
        jacalScro.backgroundColor = .white
        jacalScro.showsHorizontalScrollIndicator = false
        jacalScro.showsVerticalScrollIndicator = false
        jacalScro.contentInsetAdjustmentBehavior = .never
        return jacalScro
    }()
    
    lazy var castingBtn: UIButton = {
        let castingBtn = UIButton(type: .custom)
        return castingBtn
    }()
    
    lazy var iaafView: UIImageView = {
        let iaafView = UIImageView()
        iaafView.image = UIImage(named: "sabaloImageSecurefda")
        iaafView.contentMode = .scaleAspectFill
        iaafView.isUserInteractionEnabled = true
        return iaafView
    }()
    
    lazy var listView1: SelListView = {
        let listView1 = SelListView()
        listView1.castingBtn.setImage(UIImage(named: "RecursionNameGroid"), for: .normal)
        return listView1
    }()
    
    lazy var listView2: SelListView = {
        let listView2 = SelListView()
        listView2.castingBtn.setImage(UIImage(named: "PacesettingBgGroubas"), for: .normal)
        return listView2
    }()
    
    lazy var listView3: SelListView = {
        let listView3 = SelListView()
        listView3.castingBtn.setImage(UIImage(named: "BabBackGrouwosk"), for: .normal)
        return listView3
    }()
    
    lazy var listView4: SelListView = {
        let listView4 = SelListView()
        listView4.castingBtn.setImage(UIImage(named: "CalendricalNameGroulixi"), for: .normal)
        return listView4
    }()
    
    lazy var listView5: SelListView = {
        let listView5 = SelListView()
        listView5.castingBtn.setImage(UIImage(named: "DeductionBackGrouyinhna"), for: .normal)
        return listView5
    }()
    
    lazy var uatBtn: UIButton = {
        let uatBtn = UIButton(type: .custom)
        uatBtn.backgroundColor = UIColor.init(cssStr: "#222233")
        uatBtn.setTitle("GO CERTIFICATION PROGRAM", for: .normal)
        uatBtn.titleLabel?.font = UIFont(name: wackoDisplay, size: 15)
        return uatBtn
    }()
    
    lazy var fabianLabel: UILabel = {
        let fabianLabel = UILabel()
        fabianLabel.textAlignment = .left
        fabianLabel.textColor = UIColor.init(cssStr: "#050506")?.withAlphaComponent(0.4)
        fabianLabel.font = UIFont(name: eagernessDisplay, size: 14)
        fabianLabel.numberOfLines = 0
        let jacalText = "For comprehensive information on our data management practices, see our Privacy Policy."
        let mabString = NSMutableAttributedString(string: jacalText)
        let range = (jacalText as NSString).range(of: "Privacy Policy")
        mabString.addAttribute(.foregroundColor, value: UIColor.init(cssStr: "#2CE7BB")!, range: range)
        mabString.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: 14), range: range) 
        fabianLabel.attributedText = mabString
        return fabianLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(jacalScro)
        jacalScro.addSubview(iaafView)
        iaafView.addSubview(castingBtn)
        jacalScro.addSubview(listView1)
        jacalScro.addSubview(listView2)
        jacalScro.addSubview(listView3)
        jacalScro.addSubview(listView4)
        jacalScro.addSubview(listView5)
        addSubview(fabianLabel)
        addSubview(uatBtn)
        jacalScro.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview()
            make.height.equalTo(nabobHeight - 120)
        }
        iaafView.snp.makeConstraints { make in
            make.top.leading.equalToSuperview()
            make.width.equalTo(informationWidth)
            make.height.equalTo(334)
        }
        castingBtn.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(dfrtusdejhedhei.wacoLinkageIllinois() - 10)
            make.left.equalToSuperview().offset(10)
            make.size.equalTo(CGSize(width: 80, height: 80))
        }
        listView1.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.width.equalTo(informationWidth)
            make.height.equalTo(92)
            make.top.equalTo(iaafView.snp.bottom).offset(1)
        }
        listView2.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.width.equalTo(informationWidth)
            make.height.equalTo(92)
            make.top.equalTo(listView1.snp.bottom).offset(1)
        }
        listView3.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.width.equalTo(informationWidth)
            make.height.equalTo(92)
            make.top.equalTo(listView2.snp.bottom).offset(1)
        }
        listView4.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.width.equalTo(informationWidth)
            make.height.equalTo(92)
            make.top.equalTo(listView3.snp.bottom).offset(1)
        }
        listView5.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.width.equalTo(informationWidth)
            make.height.equalTo(92)
            make.top.equalTo(listView4.snp.bottom).offset(1)
            make.bottom.equalToSuperview().offset(-20)
        }
        fabianLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(21)
            make.width.equalTo(informationWidth - 42)
            make.top.equalTo(uatBtn.snp.bottom).offset(32)
            make.bottom.equalToSuperview().offset(-30)
        }
        uatBtn.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(12)
            make.bottom.equalTo(fabianLabel.snp.top).offset(-20)
            make.height.equalTo(56)
            make.width.equalTo(informationWidth - 25)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}








class SiblingPointViewController: TcpEagernessViewController {
    
    var lo = BehaviorRelay<String>(value: "")
    
    var dictionariesStr = BehaviorRelay<String>(value: "")
    
    lazy var listView: ListView = {
        let listView = ListView()
        return listView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(listView)
        listView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        listView.castingBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            self.navigationController?.popViewController(animated: true)
        }).disposed(by: rankBag)
        
        listView.listView1.castingBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            let dictionariesStr = self.dictionariesStr.value
            if dictionariesStr >= "eastern1" {
                self.randomBaalismSerialization(from: lo.value)
            }else {
                self.zaguanRecordLiberty(form: self.dictionariesStr.value, proid: self.lo.value)
            }
        }).disposed(by: rankBag)
        
        listView.listView2.castingBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            let dictionariesStr = self.dictionariesStr.value
            if dictionariesStr >= "eastern2" {
                let ne = KafEaglestoneViewController()
                ne.lo.accept(lo.value)
                self.navigationController?.pushViewController(ne, animated: true)
            }else {
                self.zaguanRecordLiberty(form: self.dictionariesStr.value, proid: self.lo.value)
            }
        }).disposed(by: rankBag)
        
        listView.listView3.castingBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            let dictionariesStr = self.dictionariesStr.value
            if dictionariesStr >= "eastern3" {
                let ne = BaathistWaddingViewController()
                ne.lo.accept(lo.value)
                self.navigationController?.pushViewController(ne, animated: true)
            }else {
                self.zaguanRecordLiberty(form: self.dictionariesStr.value, proid: self.lo.value)
            }
        }).disposed(by: rankBag)
        
        listView.listView4.castingBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            let dictionariesStr = self.dictionariesStr.value
            if dictionariesStr >= "eastern4" {
                let ne = TransitiveXanthippeViewController()
                ne.lo.accept(lo.value)
                self.navigationController?.pushViewController(ne, animated: true)
            }else {
                self.zaguanRecordLiberty(form: self.dictionariesStr.value, proid: self.lo.value)
            }
        }).disposed(by: rankBag)
        
        listView.listView5.castingBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            let dictionariesStr = self.dictionariesStr.value
            if dictionariesStr >= "eastern5" {
                let ne = AahWindowsViewController()
                ne.lo.accept(lo.value)
                self.navigationController?.pushViewController(ne, animated: true)
            }else {
                self.zaguanRecordLiberty(form: self.dictionariesStr.value, proid: self.lo.value)
            }
        }).disposed(by: rankBag)
        
        tapClick()
        
        
        self.listView.jacalScro.mj_header = MJRefreshNormalHeader(refreshingBlock: { [weak self] in
            guard let self = self else { return }
            self.jacalKabobAdapter(from: self.lo.value)
        })
        
        listView.fabianLabel.rx.tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self] _ in
            guard let self = self else { return }
            let iaeaWebvc = TranslationImmediateViewController()
            iaeaWebvc.eagreUrl.accept("\(h5_URL)/AgaranPesoPrivacyPolicy")
            self.navigationController?.pushViewController(iaeaWebvc, animated: true)
        }).disposed(by: rankBag)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            self.jacalKabobAdapter(from: self.lo.value)
        }
    }
    
}

extension SiblingPointViewController {
    
    private func tapClick() {
        listView.uatBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            self.zaguanRecordLiberty(form: self.dictionariesStr.value, proid: self.lo.value)
        }).disposed(by: rankBag)
    }
    
     func jacalKabobAdapter(from proid: String) {
        loaddimeCfinrad.addLoadingView()
        let man = BracketVaaljapieRequestManager()
        man.writeRevokeVideo(params: ["lo": proid, "sooddly": "1", "shoothim": "0"], pageURL: "/ll/another/between/healthy", method: .post) { [weak self] result in
            self?.listView.jacalScro.mj_header?.endRefreshing()
            loaddimeCfinrad.nabobismGabberShape()
            guard let self = self else { return }
            switch result {
            case .success(let success):
                if success.andmammy == 0 || success.andmammy == 00 {
                    if let equalityHisgold = success.preferreda.hisgold, let binaryGabbling = equalityHisgold.gabbling, !binaryGabbling.isEmpty {
                        self.dictionariesStr.accept(equalityHisgold.gabbling ?? "")
                        self.bestFabianistLinkage(form: equalityHisgold.gabbling ?? "")
                    }else {
                        self.dictionariesStr.accept("eastern6")
                        self.bestFabianistLinkage(form: "eastern6")
                    }
                }
                break
            case .failure(_):
                break
            }
        }
    }
    
    private func bestFabianistLinkage(form type: String) {
        switch type {
        case "eastern1":
            break
        case "eastern2":
            listView.listView1.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            break
        case "eastern3":
            listView.listView1.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            listView.listView2.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            break
        case "eastern4":
            listView.listView1.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            listView.listView2.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            listView.listView3.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            break
        case "eastern5":
            listView.listView1.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            listView.listView2.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            listView.listView3.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            listView.listView4.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            break
        case "eastern6":
            listView.listView1.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            listView.listView2.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            listView.listView3.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            listView.listView4.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            listView.listView5.definitionView.backgroundColor = UIColor.init(cssStr: "#C0FBE7")
            break
        default:
            break
        }
    }
    
}

