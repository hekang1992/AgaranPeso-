
import RxSwift
import TYCyclePagerView
import RxRelay

let informationWidth = UIScreen.main.bounds.size.width
let nabobHeight = UIScreen.main.bounds.size.height

class OneView: UIView {
    
    lazy var habaneroView: UIImageView = {
        let habaneroView = UIImageView()
        habaneroView.image = UIImage(named: "refactoringLeftLlbasebg")
        return habaneroView
    }()
    
    lazy var dacView: UIImageView = {
        let dacView = UIImageView()
        dacView.image = UIImage(named: "yachterPicBgimageapoi")
        return dacView
    }()
    
    lazy var jacalScro: UIScrollView = {
        let jacalScro = UIScrollView()
        jacalScro.backgroundColor = .clear
        jacalScro.showsHorizontalScrollIndicator = false
        jacalScro.showsVerticalScrollIndicator = false
        jacalScro.contentInsetAdjustmentBehavior = .never
        return jacalScro
    }()
    
    lazy var jobWscro: UIScrollView = {
        let jobWscro = UIScrollView()
        jobWscro.backgroundColor = .clear
        jobWscro.showsHorizontalScrollIndicator = false
        jobWscro.showsVerticalScrollIndicator = false
        jobWscro.contentInsetAdjustmentBehavior = .never
        return jobWscro
    }()
    
    lazy var iaafView: UIImageView = {
        let iaafView = UIImageView()
        iaafView.image = UIImage(named: "ubicationRightHomeonbg")
        iaafView.isUserInteractionEnabled = true
        return iaafView
    }()
    
    lazy var zaftigView: UIImageView = {
        let zaftigView = UIImageView()
        zaftigView.image = UIImage(named: "factoringPicPriimageloan")
        zaftigView.isUserInteractionEnabled = true
        return zaftigView
    }()
    
    lazy var revokeMlabel: UILabel = {
        let revokeMlabel = UILabel()
        revokeMlabel.text = "Professional and compliant, with complete qualifications."
        revokeMlabel.numberOfLines = 0
        revokeMlabel.textColor = UIColor.init(cssStr: "#022005")
        revokeMlabel.textAlignment = .left
        revokeMlabel.font = UIFont(name: wackoDisplay, size: 16)
        return revokeMlabel
    }()
    
    lazy var ideBtn: UIButton = {
        let ideBtn = UIButton(type: .custom)
        ideBtn.backgroundColor = UIColor.init(cssStr: "#B6FFD9")
        ideBtn.setTitle("Privacy Policy", for: .normal)
        ideBtn.setTitleColor(UIColor(cssStr: "#1EE26B"), for: .normal)
        ideBtn.titleLabel?.font = UIFont(name: wackoDisplay, size: 15)
        ideBtn.layer.cornerRadius = 10
        return ideBtn
    }()
    
    lazy var isolationBtn: UIButton = {
        let isolationBtn = UIButton(type: .custom)
        isolationBtn.backgroundColor = UIColor.init(cssStr: "#B6FFD9")
        isolationBtn.setTitle("Loan Terms", for: .normal)
        isolationBtn.setTitleColor(UIColor(cssStr: "#1EE26B"), for: .normal)
        isolationBtn.titleLabel?.font = UIFont(name: wackoDisplay, size: 15)
        isolationBtn.layer.cornerRadius = 10
        return isolationBtn
    }()
    
    lazy var finalizerView: UIImageView = {
        let finalizerView = UIImageView()
        finalizerView.image = UIImage(named: "factoringPicPriimageloan")
        finalizerView.isUserInteractionEnabled = true
        return finalizerView
    }()
    
    lazy var gabeMnlabel: UILabel = {
        let gabeMnlabel = UILabel()
        gabeMnlabel.text = "May I ask about your satisfaction with the current loan amount and interest rate?"
        gabeMnlabel.numberOfLines = 0
        gabeMnlabel.textColor = UIColor.init(cssStr: "#022006")
        gabeMnlabel.textAlignment = .left
        gabeMnlabel.font = UIFont(name: wackoDisplay, size: 16)
        return gabeMnlabel
    }()
    
    lazy var wrapperBtn: UIButton = {
        let wrapperBtn = UIButton(type: .custom)
        wrapperBtn.adjustsImageWhenHighlighted = false
        wrapperBtn.setImage(UIImage(named: "WacoPicGrouptraff"), for: .normal)
        return wrapperBtn
    }()
    
    lazy var determinantsBtn: UIButton = {
        let determinantsBtn = UIButton(type: .custom)
        determinantsBtn.adjustsImageWhenHighlighted = false
        determinantsBtn.setImage(UIImage(named: "RabbinBgGroupaccount"), for: .normal)
        return determinantsBtn
    }()
    
    lazy var baaroqueBtn: UIButton = {
        let baaroqueBtn = UIButton(type: .custom)
        baaroqueBtn.adjustsImageWhenHighlighted = false
        baaroqueBtn.setImage(UIImage(named: "IndexIconGroupallgro"), for: .normal)
        return baaroqueBtn
    }()
    
    lazy var tokenView: UIImageView = {
        let tokenView = UIImageView()
        
        tokenView.image = UIImage(named: "operatorBgImagwenhao")
        return tokenView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(habaneroView)
        addSubview(dacView)
        addSubview(jacalScro)
        jacalScro.addSubview(iaafView)
        jacalScro.addSubview(zaftigView)
        
        zaftigView.addSubview(revokeMlabel)
        zaftigView.addSubview(ideBtn)
        zaftigView.addSubview(isolationBtn)
        
        jacalScro.addSubview(finalizerView)
        finalizerView.addSubview(gabeMnlabel)
        finalizerView.addSubview(jobWscro)
        
        finalizerView.insertSubview(tokenView, belowSubview: gabeMnlabel)
        jobWscro.addSubview(wrapperBtn)
        jobWscro.addSubview(determinantsBtn)
        jobWscro.addSubview(baaroqueBtn)
        
        habaneroView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        dacView.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview()
            make.height.equalTo(353)
        }
        jacalScro.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        iaafView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(112)
            make.width.equalTo(335)
            make.height.equalTo(420)
        }
        zaftigView.snp.makeConstraints { make in
            make.top.equalTo(iaafView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.size.equalTo(CGSize(width: 335, height: 133))
        }
        
        revokeMlabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(14)
            make.left.equalToSuperview().offset(17)
            make.centerX.equalToSuperview()
        }
        
        ideBtn.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(17)
            make.top.equalTo(revokeMlabel.snp.bottom).offset(16)
            make.size.equalTo(CGSize(width: 130, height: 46))
        }
        
        isolationBtn.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-17)
            make.top.equalTo(revokeMlabel.snp.bottom).offset(16)
            make.size.equalTo(CGSize(width: 130, height: 46))
        }
        
        finalizerView.snp.makeConstraints { make in
            make.top.equalTo(zaftigView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.size.equalTo(CGSize(width: 335, height: 142))
            make.bottom.equalToSuperview().offset(-20)
        }
        
        
        gabeMnlabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(14)
            make.left.equalToSuperview().offset(17)
            make.centerX.equalToSuperview()
        }
        tokenView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.right.equalToSuperview()
            make.size.equalTo(CGSize(width: 64, height: 71))
        }
        
        jobWscro.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(12)
            make.right.equalToSuperview()
            make.top.equalTo(gabeMnlabel.snp.bottom).offset(25)
            make.height.equalTo(46)
        }
        
        wrapperBtn.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.bottom.equalToSuperview()
            make.width.equalTo(140)
        }
       
        determinantsBtn.snp.makeConstraints { make in
            make.left.equalTo(wrapperBtn.snp.right).offset(10)
            make.top.bottom.equalToSuperview()
            make.width.equalTo(140)
        }
        
        baaroqueBtn.snp.makeConstraints { make in
            make.left.equalTo(determinantsBtn.snp.right).offset(10)
            make.top.bottom.equalToSuperview()
            make.width.equalTo(166)
            make.right.equalToSuperview().offset(-10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class TwoView: UIView {
    
    var block: ((String) -> Void)?
    
    let rankBag = DisposeBag()
    
    var model = BehaviorRelay<preferredaModel?>(value: nil)
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor.init(cssStr: "#F6F7F6")
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.register(PraodrctCell.self, forCellReuseIdentifier: "PraodrctCell")
        return tableView
    }()
    
    lazy var iaafView: UIImageView = {
        let iaafView = UIImageView()
        iaafView.image = UIImage(named: "yachterPicBgimageapoi")
        iaafView.isUserInteractionEnabled = true
        return iaafView
    }()
    
    lazy var operandView: UIImageView = {
        let operandView = UIImageView()
        operandView.isUserInteractionEnabled = true
        operandView.image = UIImage(named: "connectedImgRepagemen")
        return operandView
    }()
    
    lazy var overloadedView: TYCyclePagerView = {
        let overloadedView = TYCyclePagerView()
        overloadedView.delegate = self
        overloadedView.dataSource = self
        overloadedView.backgroundColor = .clear
        overloadedView.isInfiniteLoop = true
        overloadedView.autoScrollInterval = 2
        overloadedView.register(Feif6jcgCell.self, forCellWithReuseIdentifier: "Feif6jcgCell")
        return overloadedView
    }()
    
    lazy var recordsetView: TYCyclePagerView = {
        let recordsetView = TYCyclePagerView()
        recordsetView.delegate = self
        recordsetView.dataSource = self
        recordsetView.backgroundColor = .clear
        recordsetView.isInfiniteLoop = true
        recordsetView.autoScrollInterval = 2
        recordsetView.register(TirldeeCell.self, forCellWithReuseIdentifier: "TirldeeCell")
        return recordsetView
    }()
    
    lazy var pacesettingClickone: UIImageView = {
        let iaafView = UIImageView()
        iaafView.image = UIImage(named: "libertyBgProcadimagea")
        return iaafView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        tableView.rx.setDelegate(self).disposed(by: rankBag)
        
        model
            .compactMap { $0?.greaterone?.aviolence }
            .asObservable()
            .bind(to: tableView.rx.items(cellIdentifier: "PraodrctCell", cellType: PraodrctCell.self)) { row, model, cell in
                cell.backgroundColor = .clear
                cell.selectionStyle = .none
                cell.model.accept(model)
            }.disposed(by: rankBag)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension TwoView: UITableViewDelegate, TYCyclePagerViewDelegate, TYCyclePagerViewDataSource  {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return dfrtusdejhedhei.wacoLinkageIllinois() + 336
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let dacquoiseView = UIView()
        dacquoiseView.addSubview(iaafView)
        self.iaafView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(353)
        }
        
        let count = model.value?.toldyou?.aviolence?.count ?? 0
        let liberticidalCouutq = model.value?.herplacid?.aviolence.count ?? 0
        if count > 1 {
            recordsetView.isInfiniteLoop = true
        }else {
            recordsetView.isInfiniteLoop = false
        }
        
        if liberticidalCouutq > 1 {
            overloadedView.isInfiniteLoop = true
        }else {
            overloadedView.isInfiniteLoop = false
        }
        
        if count != 0 {
            iaafView.addSubview(operandView)
            operandView.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.left.equalToSuperview().offset(18)
                make.top.equalToSuperview().offset(137)
                make.height.equalTo(40)
            }
            
            operandView.addSubview(recordsetView)
            recordsetView.snp.makeConstraints { make in
                make.centerY.equalToSuperview()
                make.left.equalToSuperview().offset(10)
                make.height.equalTo(40)
                make.right.equalToSuperview().offset(-110)
            }
        }
        
        iaafView.addSubview(overloadedView)
        overloadedView.snp.makeConstraints { make in
            if count != 0 {
                make.top.equalToSuperview().offset(196)
            }else {
                make.top.equalToSuperview().offset(137)
            }
            make.left.equalToSuperview().offset(17)
            make.centerX.equalToSuperview()
            make.height.equalTo(140)
        }
        
        dacquoiseView.addSubview(pacesettingClickone)
        
        pacesettingClickone.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(17)
            make.size.equalTo(CGSize(width: 116, height: 30))
        }
        
        return dacquoiseView
    }
    
    func numberOfItems(in pagerView: TYCyclePagerView) -> Int {
        if pagerView == overloadedView {
            return model.value?.herplacid?.aviolence.count ?? 0
        }else {
            return model.value?.toldyou?.aviolence?.count ?? 0
        }
        
    }
    
    func pagerView(_ pagerView: TYCyclePagerView, cellForItemAt index: Int) -> UICollectionViewCell {
        if pagerView == overloadedView {
            guard let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "Feif6jcgCell", for: index) as? Feif6jcgCell else { return UICollectionViewCell() }
            let backwardArrayimage = model.value?.herplacid?.aviolence
            let model = backwardArrayimage?[index]
            cell.icon.kf.setImage(with: URL(string: model?.caring ?? ""))
            return cell
        }else {
            guard let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "TirldeeCell", for: index) as? TirldeeCell else { return UICollectionViewCell() }
            let backwardArrayimage = model.value?.toldyou?.aviolence
            let model = backwardArrayimage?[index]
            cell.revokeMlabel.text = model?.whey ?? ""
            cell.revokeMlabel.textColor = UIColor.init(cssStr: model?.unawareof ?? "#000000")
            return cell
        }
        
    }
    
    func pagerView(_ pagerView: TYCyclePagerView, didSelectItemAt index: Int) {
        if pagerView == overloadedView {
            let model = model.value?.herplacid?.aviolence[index]
            let gabeForyou = model?.foryou ?? ""
            if !gabeForyou.isEmpty {
                self.block?(gabeForyou)
            }
        }else {
            let model = model.value?.toldyou?.aviolence?[index]
            let gabeForyou = model?.foryou ?? ""
            if !gabeForyou.isEmpty {
                self.block?(gabeForyou)
            }
        }
    }
    
    func layout(for pagerView: TYCyclePagerView) -> TYCyclePagerViewLayout {
        let layout = TYCyclePagerViewLayout()
        layout.itemSize = CGSizeMake(informationWidth - 34, 140)
        layout.itemSpacing = 5
        return layout
    }
    
}

class Feif6jcgCell: UICollectionViewCell {
    
    let rankBag = DisposeBag()
    
    lazy var icon: UIImageView = {
        let icon = UIImageView()
        return icon
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(icon)
        icon.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class TirldeeCell: UICollectionViewCell {
    
    let rankBag = DisposeBag()
    
    lazy var revokeMlabel: UILabel = {
        let revokeMlabel = UILabel()
        revokeMlabel.textColor = .black
        revokeMlabel.textAlignment = .left
        revokeMlabel.numberOfLines = 2
        revokeMlabel.font = UIFont(name: wackoDisplay, size: 15)
        return revokeMlabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(revokeMlabel)
        revokeMlabel.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class PraodrctCell: UITableViewCell {
    
    let rankBag = DisposeBag()
    
    var model = BehaviorRelay<aviolenceModel?>(value: nil)
    
    lazy var definitionView: UIView = {
        let definitionView = UIView()
        definitionView.backgroundColor = .white
        definitionView.layer.cornerRadius = 8
        return definitionView
    }()
    
    lazy var revokeMlabel: PaddedLabel = {
        let revokeMlabel = PaddedLabel()
        revokeMlabel.textColor = UIColor.init(cssStr: "#21FB91")
        revokeMlabel.textAlignment = .center
        revokeMlabel.font = UIFont(name: wackoDisplay, size: 14)
        revokeMlabel.backgroundColor = UIColor.init(cssStr: "#112724")
        revokeMlabel.padding = UIEdgeInsets(top: 1, left: 3, bottom: 1, right: 3)
        return revokeMlabel
    }()
    
    lazy var iaafView: UIImageView = {
        let iaafView = UIImageView()
        iaafView.backgroundColor = UIColor.init(cssStr: "#D9D9D9")
        return iaafView
    }()
    
    lazy var deferMylabel: UILabel = {
        let deferMylabel = UILabel()
        deferMylabel.textColor = .black
        deferMylabel.textAlignment = .left
        deferMylabel.font = UIFont(name: wackoDisplay, size: 24)
        return deferMylabel
    }()
    
    lazy var habaneroDeslabel: UILabel = {
        let habaneroDeslabel = UILabel()
        habaneroDeslabel.textColor = UIColor.init(cssStr: "#999999")
        habaneroDeslabel.textAlignment = .left
        habaneroDeslabel.font = UIFont(name: eagernessDisplay, size: 14)
        return habaneroDeslabel
    }()
    
    lazy var sabaloNextlabel: UILabel = {
        let sabaloNextlabel = UILabel()
        sabaloNextlabel.textColor = .black
        sabaloNextlabel.textAlignment = .center
        sabaloNextlabel.font = UIFont(name: wackoDisplay, size: 18)
        sabaloNextlabel.backgroundColor = UIColor.init(cssStr: "#21FB91")
        return sabaloNextlabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(definitionView)
        definitionView.addSubview(revokeMlabel)
        definitionView.addSubview(iaafView)
        definitionView.addSubview(deferMylabel)
        definitionView.addSubview(habaneroDeslabel)
        definitionView.addSubview(sabaloNextlabel)
        
        definitionView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
            make.left.equalToSuperview().offset(17)
        }
        
        revokeMlabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(10)
            make.height.equalTo(21)
        }
        iaafView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.top.equalTo(revokeMlabel.snp.bottom).offset(9)
            make.size.equalTo(CGSize(width: 48, height: 48))
            make.bottom.equalToSuperview().offset(-10)
        }
        deferMylabel.snp.makeConstraints { make in
            make.height.equalTo(36)
            make.left.equalTo(iaafView.snp.right).offset(12)
            make.top.equalTo(revokeMlabel.snp.bottom).offset(7)
        }
        habaneroDeslabel.snp.makeConstraints { make in
            make.bottom.equalTo(iaafView.snp.bottom).offset(1)
            make.height.equalTo(21)
            make.left.equalTo(iaafView.snp.right).offset(12)
        }
        sabaloNextlabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().offset(-12)
            make.size.equalTo(CGSize(width: 89, height: 45))
        }
        
        model.asObservable().subscribe(onNext: { [weak self] mon in
            guard let self = self, let mmo = mon else { return }
            self.revokeMlabel.text = mmo.blot ?? ""
            self.deferMylabel.text = mmo.itseemed ?? ""
            self.habaneroDeslabel.text = mmo.toanyone ?? ""
            self.iaafView.kf.setImage(with: URL(string: mmo.makeyou ?? ""))
            let enumeratorsThenyou = mmo.thenyou ?? ""
            self.sabaloNextlabel.isHidden = enumeratorsThenyou.isEmpty
            if !enumeratorsThenyou.isEmpty {
                self.sabaloNextlabel.text = mmo.thenyou ?? ""
            }
        }).disposed(by: rankBag)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class PaddedLabel: UILabel {
    var padding: UIEdgeInsets = .zero
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: padding.top, left: padding.left, bottom: padding.bottom, right: padding.right)
        let sabayonRect = rect.inset(by: insets)
        super.drawText(in: sabayonRect)
    }
    
    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        let uriPadding = size.width + padding.left + padding.right
        let hyperlinkPadding = size.height + padding.top + padding.bottom
        return CGSize(width: uriPadding, height: hyperlinkPadding)
    }
}
