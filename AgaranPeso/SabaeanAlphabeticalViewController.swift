
import UIKit
import JXSegmentedView
import TYAlertController
import MJRefresh
import RxRelay
import RxSwift

class agernessViewController: TcpEagernessViewController {
    
    lazy var itemView1: eufnadefItemView = {
        let itemView1 = eufnadefItemView()
        itemView1.revokeMlabel.text = "BORROWING CONTRACT"
        itemView1.definitionView.backgroundColor = .white
        return itemView1
    }()
    
    lazy var itemView2: eufnadefItemView = {
        let itemView2 = eufnadefItemView()
        itemView2.revokeMlabel.text = "PRIVACY STATEMENT"
        itemView2.definitionView.backgroundColor = .white
        return itemView2
    }()
    
    lazy var itemView3: eufnadefItemView = {
        let itemView3 = eufnadefItemView()
        itemView3.revokeMlabel.text = "CHECK FOR UPDATES"
        itemView3.definitionView.backgroundColor = .white
        return itemView3
    }()

    lazy var dacquoiseView: JfiefnfView = {
        let dacquoiseView = JfiefnfView()
        dacquoiseView.revokeMlabel.text = "SETTINGS"
        return dacquoiseView
    }()
    
    lazy var uatBtn: UIButton = {
        let uatBtn = UIButton(type: .custom)
        uatBtn.layer.cornerRadius = 4
        uatBtn.backgroundColor = UIColor.white
        uatBtn.setTitleColor(UIColor.init(cssStr: "#E1524C"), for: .normal)
        uatBtn.setTitle("REMOVING OR CANCELLING AN ACCOUNT", for: .normal)
        uatBtn.titleLabel?.font = UIFont(name: wackoDisplay, size: 15)
        return uatBtn
    }()
    
    lazy var assemblyView: A2AQandaharDelView = {
        let assemblyView = A2AQandaharDelView(frame: UIScreen.main.bounds)
        return assemblyView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.init(cssStr: "#F6F7F6")
        
        view.addSubview(dacquoiseView)
        dacquoiseView.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.height.equalTo(dfrtusdejhedhei.wacoLinkageIllinois() + 56)
        }
        dacquoiseView.castingBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            self.navigationController?.popViewController(animated: true)
        }).disposed(by: rankBag)
        
        view.addSubview(itemView1)
        view.addSubview(itemView2)
        view.addSubview(itemView3)
        view.addSubview(uatBtn)
        
        itemView1.snp.makeConstraints { make in
            make.top.equalTo(dacquoiseView.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(48)
        }
        itemView2.snp.makeConstraints { make in
            make.top.equalTo(itemView1.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(48)
        }
        itemView3.snp.makeConstraints { make in
            make.top.equalTo(itemView2.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(48)
        }
        
        uatBtn.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.left.equalToSuperview().offset(15)
            make.bottom.equalToSuperview().offset(-30)
            make.height.equalTo(48)
        }
        
        itemView1.btn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            let iaeaWebvc = TranslationImmediateViewController()
            iaeaWebvc.eagreUrl.accept("\(h5_URL)/AgaranPesoPrivacyPolicy")
            self.navigationController?.pushViewController(iaeaWebvc, animated: true)
        }).disposed(by: rankBag)
        
        itemView2.btn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            let iaeaWebvc = TranslationImmediateViewController()
            iaeaWebvc.eagreUrl.accept("\(h5_URL)/AgaranPesoLoanTerm")
            self.navigationController?.pushViewController(iaeaWebvc, animated: true)
        }).disposed(by: rankBag)
        
        itemView3.btn.rx.tap.subscribe(onNext: {
            loaddimeCfinrad.addLoadingView()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                loaddimeCfinrad.nabobismGabberShape()
                ToastViewConfig.showToast(message: "Current version is already the latest.")
            }
        }).disposed(by: rankBag)
        
        uatBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            self.assemblyView.iaafView.image = UIImage(named: "pacedIconDellimagepu")
            self.assemblyView.btn1.setImage(UIImage(named: "immediateBgAldel"), for: .normal)
            let lookupAlert = TYAlertController(alert: self.assemblyView, preferredStyle: .alert)
            self.present(lookupAlert!, animated: true)
            self.assemblyView.block = {
                self.keyCliVowel()
            }
            self.assemblyView.block1 = {
                self.dismiss(animated: true)
            }
        }).disposed(by: rankBag)
        
    }

    
    private func keyCliVowel() {
        loaddimeCfinrad.addLoadingView()
        let man = BracketVaaljapieRequestManager()
        man.writeRevokeVideo(params: ["del": "1", "cost": "cent"], pageURL: "/ll/education/social/gather", method: .get) { result in
            loaddimeCfinrad.nabobismGabberShape()
            switch result {
            case .success(let success):
                if success.andmammy == 0 || success.andmammy == 00 {
                    DispatchQueue.main.async {
                        YachtyCastingInfo.removedlInfo()
                        NotificationCenter.default.post(name: NSNotification.Name(ROOT_VC), object: nil)
                    }
                }
                break
            case .failure(_):
                break
            }
        }
    }
    
}









class OedweeViewController: TcpEagernessViewController {
    
    private var haarlemSegmurce: JXSegmentedTitleDataSource!
    
    private var wackyBlatantly = BehaviorRelay<String>(value: "")
    
    private lazy var dacquoiseView: JfiefnfView = fabricateZaffreMultiuser()
    private lazy var tabardEulerianXanthinin: JXSegmentedView = yachtsmanMiddlewareIndex()
    private lazy var calendarCocsciew: UIScrollView = caballoInheritanceRabbin()
    
    private var habanaArray = [LidaodefViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        veeOakenAnalphabetic()
        baasLabelledHandler()
        aahOakletRabbinic()
    }
    
    private func veeOakenAnalphabetic() {
        view.addSubview(dacquoiseView)
        view.addSubview(tabardEulerianXanthinin)
        view.addSubview(calendarCocsciew)
        
        voronoiCabaneMaintaining()
        isolationBackwardKadi()
        macaberOperandNondependent()
    }
    
    private func voronoiCabaneMaintaining() {
        dacquoiseView.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.height.equalTo(dfrtusdejhedhei.wacoLinkageIllinois() + 56)
        }
    }
    
    private func isolationBackwardKadi() {
        tabardEulerianXanthinin.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(dacquoiseView.snp.bottom)
            make.height.equalTo(40)
        }
    }
    
    private func macaberOperandNondependent() {
        calendarCocsciew.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(tabardEulerianXanthinin.snp.bottom)
        }
    }
    
    private func baasLabelledHandler() {
        habanaArray.forEach { $0.view.removeFromSuperview() }
        habanaArray.removeAll()
        
        for _ in 0..<5 {
            let vcLidse = LidaodefViewController()
            calendarCocsciew.addSubview(vcLidse.view)
            habanaArray.append(vcLidse)
            
            vcLidse.listView.tableView.rx.modelSelected(widehallModel.self)
                .subscribe(onNext: { [weak self] model in
                    self?.operationTabbySabaoth(model)
                })
                .disposed(by: rankBag)
        }
        
        updateViewControllersLayout()
        segmentedView(tabardEulerianXanthinin, didSelectedItemAt: 0)
    }
    
    private func updateViewControllersLayout() {
        for (index, vc) in habanaArray.enumerated() {
            vc.view.frame = CGRect(x: informationWidth * CGFloat(index), y: 0, width: informationWidth, height: nabobHeight - tabardEulerianXanthinin.frame.maxY)
        }
    }
    
    private func operationTabbySabaoth(_ model: widehallModel) {
        loaddimeCfinrad.addLoadingView()
        print("Selected model: \(model.rejoining?.gazed ?? "")")
        dacLabelledModifier(from: model.rejoining?.gazed ?? "")
    }
    
    private func aahOakletRabbinic() {
        dacquoiseView.castingBtn.rx.tap
            .subscribe(onNext: { [weak self] in
                self?.navigationController?.popViewController(animated: true)
            })
            .disposed(by: rankBag)
    }
    
    private func fabricateZaffreMultiuser() -> JfiefnfView {
        let dacquoiseView = JfiefnfView()
        dacquoiseView.revokeMlabel.text = "ORDER"
        return dacquoiseView
    }
    
    private func yachtsmanMiddlewareIndex() -> JXSegmentedView {
        let tabardEulerianXanthinin = JXSegmentedView()
        tabardEulerianXanthinin.delegate = self
        tabardEulerianXanthinin.backgroundColor = .white
        
        haarlemSegmurce = JXSegmentedTitleDataSource()
        haarlemSegmurce.titles = ["All", "Pending Repayment", "Payment Failure", "Completed", "In Progress"]
        haarlemSegmurce.isTitleColorGradientEnabled = true
        haarlemSegmurce.titleSelectedFont = UIFont(name: wackoDisplay, size: 15)!
        haarlemSegmurce.titleNormalFont = UIFont(name: wackoDisplay, size: 15)!
        haarlemSegmurce.titleNormalColor = UIColor.black.withAlphaComponent(0.5)
        haarlemSegmurce.titleSelectedColor = UIColor.black
        
        tabardEulerianXanthinin.dataSource = haarlemSegmurce
        let macacoIndicator = kadiAddressXanthochroi()
        tabardEulerianXanthinin.indicators = [macacoIndicator]
        tabardEulerianXanthinin.contentScrollView = calendarCocsciew
        
        return tabardEulerianXanthinin
    }
    
    private func kadiAddressXanthochroi() -> JXSegmentedIndicatorLineView {
        let macacoIndicator = JXSegmentedIndicatorLineView()
        macacoIndicator.indicatorWidth = JXSegmentedViewAutomaticDimension
        macacoIndicator.indicatorHeight = 2
        macacoIndicator.lineStyle = .lengthen
        macacoIndicator.indicatorColor = UIColor(cssStr: "#1EFB91")?.withAlphaComponent(0.8) ?? UIColor.black
        return macacoIndicator
    }
    
    private func caballoInheritanceRabbin() -> UIScrollView {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor(cssStr: "#F6F7F6")
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.contentSize = CGSize(width: informationWidth * 5, height: 0)
        return scrollView
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateViewControllersLayout()
    }
}


extension OedweeViewController: JXSegmentedViewDelegate {
    
    func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
        switch index {
        case 0:
            wackyBlatantly.accept("4")
            break
        case 1:
            wackyBlatantly.accept("6")
            break
        case 2:
            wackyBlatantly.accept("8")
            break
        case 3:
            wackyBlatantly.accept("5")
            break
        case 4:
            wackyBlatantly.accept("7")
            break
        default:
            break
        }
        self.habanaArray[index].wackyBlatantly.accept(wackyBlatantly.value)
        self.habanaArray[index].pachaInheritanceUser(from: wackyBlatantly.value)
    }
    
}






class LidaodefViewController: TcpEagernessViewController {
    
    var block: ((String) -> Void)?
    
    var wackyBlatantly = BehaviorRelay<String>(value: "")
    
    lazy var listView: OrdDRGerLE4tView = {
        let listView = OrdDRGerLE4tView()
        return listView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(listView)
        listView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        listView.tableView.mj_header =  MJRefreshNormalHeader(refreshingBlock: { [weak self] in
            guard let self = self else { return }
            self.pachaInheritanceUser(from: wackyBlatantly.value)
        })
        
    }
    
}

extension LidaodefViewController {
    
     func pachaInheritanceUser(from blatantly: String) {
        loaddimeCfinrad.addLoadingView()
        let man = BracketVaaljapieRequestManager()
         man.writeRevokeVideo(params: ["olist": "1", "blatantly": blatantly, "date": dietDict.librarySchemaQbp()], pageURL: "/ll/bedchamber/because/tells", method: .post) { result in
            loaddimeCfinrad.nabobismGabberShape()
            self.listView.tableView.mj_header?.endRefreshing()
            switch result {
            case .success(let success):
                let model = success.preferreda
                if let oamArray = model.unending, oamArray.count != 0 {
                    self.cliqueView.removeFromSuperview()
                    self.listView.assignArray.accept(oamArray)
                }else {
                    self.listView.tableView.addSubview(self.cliqueView)
                    self.cliqueView.snp.makeConstraints { make in
                        make.centerY.equalToSuperview()
                        make.left.equalToSuperview().offset((informationWidth - 211) * 0.5)
                        make.size.equalTo(CGSize(width: 211, height: 208))
                    }
                }
                break
            case .failure(_):
                break
            }
        }
    }
    
}






class OrdDRGerLE4tView: UIView {
    
    let rankBag = DisposeBag()
    
    var assignArray = BehaviorRelay<[widehallModel]>(value: [])
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor.init(cssStr: "#F6F7F6")
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.register(OrdefEF4tCell.self, forCellReuseIdentifier: "OrdefEF4tCell")
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        tableView.rx.setDelegate(self).disposed(by: rankBag)
        
        assignArray.asObservable().bind(to: tableView.rx.items(cellIdentifier: "OrdefEF4tCell", cellType: OrdefEF4tCell.self)) { index, model, cell in
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            cell.model.accept(model)
        }.disposed(by: rankBag)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension OrdDRGerLE4tView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
}


class Kong4tView: UIView {
    
    lazy var habaneroView: UIImageView = {
        let habaneroView = UIImageView()
        habaneroView.image = UIImage(named: "GeneratingUM")
        return habaneroView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(habaneroView)
        habaneroView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.size.equalTo(CGSize(width: 211, height: 208))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


class OrdefEF4tCell: UITableViewCell {
    
    let rankBag = DisposeBag()
    
    var model = BehaviorRelay<widehallModel?>(value: nil)
    
    lazy var definitionView: UIView = {
        let definitionView = UIView()
        definitionView.backgroundColor = .white
        definitionView.layer.cornerRadius = 4
        return definitionView
    }()
    
    lazy var iaafView: UIImageView = {
        let iaafView = UIImageView()
        return iaafView
    }()
    
    lazy var revokeMlabel: UILabel = {
        let revokeMlabel = UILabel()
        revokeMlabel.textColor = UIColor.black.withAlphaComponent(0.5)
        revokeMlabel.textAlignment = .left
        revokeMlabel.font = UIFont(name: wackoDisplay, size: 15)
        return revokeMlabel
    }()
    
    lazy var dackerTlabel: PaddedLabel = {
        let dackerTlabel = PaddedLabel()
        dackerTlabel.textColor = .black
        dackerTlabel.textAlignment = .center
        dackerTlabel.font = UIFont(name: wackoDisplay, size: 15)
        dackerTlabel.padding = UIEdgeInsets(top: 3, left: 10, bottom: 3, right: 10)
        dackerTlabel.backgroundColor = UIColor.init(cssStr: "#1EDB91")
        return dackerTlabel
    }()
    
    lazy var item1: OListItemView = {
        let item1 = OListItemView()
        item1.definitionView.backgroundColor = UIColor.init(cssStr: "#1EDB91")
        return item1
    }()
    
    lazy var item2: OListItemView = {
        let item2 = OListItemView()
        item2.definitionView.backgroundColor = UIColor.init(cssStr: "#55E7FE")
        return item2
    }()
    
    lazy var lineView: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor.init(cssStr: "#F5F5F3")
        return lineView
    }()
    
    lazy var habatsuDesclabel: UILabel = {
        let habatsuDesclabel = UILabel()
        habatsuDesclabel.textColor = UIColor.black.withAlphaComponent(0.5)
        habatsuDesclabel.textAlignment = .left
        habatsuDesclabel.font = UIFont(name: wackoDisplay, size: 15)
        return habatsuDesclabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(definitionView)
        definitionView.addSubview(iaafView)
        definitionView.addSubview(revokeMlabel)
        definitionView.addSubview(dackerTlabel)
        definitionView.addSubview(item1)
        definitionView.addSubview(item2)
        definitionView.addSubview(lineView)
        definitionView.addSubview(habatsuDesclabel)
        definitionView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(24)
            make.bottom.equalToSuperview()
        }
        
        iaafView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(10)
            make.size.equalTo(CGSize(width: 80, height: 80))
        }
        
        revokeMlabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(14)
            make.left.equalTo(iaafView.snp.right).offset(14)
            make.height.equalTo(17)
            make.bottom.equalToSuperview().offset(-100)
        }
        dackerTlabel.snp.makeConstraints { make in
            make.height.equalTo(21)
            make.right.equalToSuperview().offset(-12)
            make.top.equalToSuperview().offset(12)
        }
        item1.snp.makeConstraints { make in
            make.left.equalTo(iaafView.snp.right).offset(13)
            make.size.equalTo(CGSize(width: 115, height: 45))
            make.top.equalTo(dackerTlabel.snp.bottom).offset(12)
        }
        item2.snp.makeConstraints { make in
            make.left.equalTo(item1.snp.right)
            make.size.equalTo(CGSize(width: 115, height: 45))
            make.top.equalTo(dackerTlabel.snp.bottom).offset(12)
        }
        lineView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.left.equalToSuperview().offset(10)
            make.height.equalTo(0.5)
            make.top.equalTo(item2.snp.bottom).offset(8)
        }
        habatsuDesclabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.top.equalTo(lineView.snp.top)
            make.left.equalToSuperview().offset(10)
            make.centerX.equalToSuperview()
        }
        model.asObservable().subscribe(onNext: { [weak self] model in
            guard let self = self, let model = model else { return }
            iaafView.kf.setImage(with: URL(string: model.rejoining?.makeyou ?? ""))
            revokeMlabel.text = model.blot ?? ""
            dackerTlabel.text = model.rejoining?.shareday ?? ""
            item1.revokeMlabel.text = model.herseat ?? ""
            item1.m1label.text = model.tiredly ?? ""
            item2.revokeMlabel.text = model.rejoining?.followday ?? ""
            item2.m1label.text = model.rejoining?.distinctionday ?? ""
            habatsuDesclabel.text = model.belonging ?? ""
        }).disposed(by: rankBag)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class OListItemView: UIView {
    
    lazy var definitionView: UIView = {
        let definitionView = UIView()
        return definitionView
    }()
    
    lazy var revokeMlabel: UILabel = {
        let revokeMlabel = UILabel()
        revokeMlabel.textColor = UIColor.black.withAlphaComponent(0.5)
        revokeMlabel.textAlignment = .center
        revokeMlabel.font = UIFont(name: eagernessDisplay, size: 12)
        return revokeMlabel
    }()
    
    lazy var m1label: UILabel = {
        let m1label = UILabel()
        m1label.textColor = .black
        m1label.textAlignment = .center
        m1label.font = UIFont(name: wackoDisplay, size: 12)
        return m1label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(definitionView)
        definitionView.addSubview(revokeMlabel)
        definitionView.addSubview(m1label)
        definitionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        revokeMlabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(5)
            make.height.equalTo(17)
        }
        m1label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(revokeMlabel.snp.bottom).offset(3)
            make.height.equalTo(17)
            make.bottom.equalToSuperview().offset(-3)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
