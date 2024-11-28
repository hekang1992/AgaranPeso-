
import UIKit
import RxRelay
import RxSwift

class Seldde5jfhfCell: UITableViewCell {
    
    var model = BehaviorRelay<aviolenceModel?>(value: nil)
    
    let rankBag = DisposeBag()
    
    lazy var definitionView: UIView = {
        let definitionView = UIView()
        definitionView.backgroundColor = .white
        definitionView.layer.cornerRadius = 4
        return definitionView
    }()
    
    lazy var revokeMlabel: UILabel = {
        let revokeMlabel = UILabel()
        revokeMlabel.textColor = UIColor.init(cssStr: "#000011")
        revokeMlabel.textAlignment = .left
        revokeMlabel.font = UIFont(name: wackoDisplay, size: 16)
        return revokeMlabel
    }()
    
    lazy var serverNlabel: UILabel = {
        let serverNlabel = UILabel()
        serverNlabel.textColor = UIColor.init(cssStr: "#000011")?.withAlphaComponent(0.5)
        serverNlabel.textAlignment = .left
        serverNlabel.font = UIFont(name: wackoDisplay, size: 16)
        return serverNlabel
    }()
    
    lazy var iaafView: UIImageView = {
        let iaafView = UIImageView()
        iaafView.isHidden = true
        iaafView.image = UIImage(named: "XanthismNameVector")
        return iaafView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(definitionView)
        definitionView.addSubview(revokeMlabel)
        definitionView.addSubview(serverNlabel)
        definitionView.addSubview(iaafView)
        definitionView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.left.equalToSuperview().offset(21)
            make.top.equalToSuperview().offset(24)
            make.height.equalTo(65)
            make.bottom.equalToSuperview()
        }
        revokeMlabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(12)
            make.top.equalToSuperview().offset(11)
            make.height.equalTo(20)
        }
        serverNlabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(12)
            make.top.equalTo(revokeMlabel.snp.bottom).offset(6)
            make.height.equalTo(20)
            make.bottom.equalToSuperview().offset(-10)
        }
        iaafView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.size.equalTo(CGSize(width: 15, height: 18))
            make.right.equalToSuperview().offset(-21)
        }
        
        model.subscribe(onNext: { [weak self] modl in
            guard let self = self, let model = modl else { return }
            revokeMlabel.text = model.crumbs
            serverNlabel.text = model.outunder
        }).disposed(by: rankBag)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}









class DemarshalActivateViewController: TcpEagernessViewController {
    
    var index: Int = 0
    
    var tabascoArray = BehaviorRelay<[String]?>(value: [])
    
    var assignArray = BehaviorRelay<[aviolenceModel]>(value: [])
    var discreteArray = BehaviorRelay<[aviolenceModel]>(value: [])
    var pacemakerArray = BehaviorRelay<[aviolenceModel]>(value: [])
    
    var equalityModel = BehaviorRelay<aviolenceModel?>(value: nil)
    
    lazy var dacquoiseView: JfiefnfView = {
        let dacquoiseView = JfiefnfView()
        dacquoiseView.revokeMlabel.text = "CHANGE ACCOUNT"
        dacquoiseView.addBtn.isHidden = false
        return dacquoiseView
    }()
    
    lazy var enumeratorsView: Tfjeif7View = {
        let enumeratorsView = Tfjeif7View()
        enumeratorsView.backgroundColor = .white
        return enumeratorsView
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor.init(cssStr: "#F7F7F6")
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.register(Seldde5jfhfCell.self, forCellReuseIdentifier: "Seldde5jfhfCell")
        return tableView
    }()
    
    lazy var uatBtn: UIButton = {
        let uatBtn = UIButton(type: .custom)
        uatBtn.backgroundColor = UIColor.init(cssStr: "#B7B7D5")
        uatBtn.setTitle("CONFIRM", for: .normal)
        uatBtn.isEnabled = false
        uatBtn.setTitleColor(UIColor.init(cssStr: "#1EFB96"), for: .normal)
        uatBtn.titleLabel?.font = UIFont(name: wackoDisplay, size: 18)
        return uatBtn
    }()
    
    var libertyCell: Seldde5jfhfCell?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(dacquoiseView)
        dacquoiseView.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.height.equalTo(dfrtusdejhedhei.wacoLinkageIllinois() + 56)
        }
        
        dacquoiseView.castingBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            self.discoLivelockPacesetter()
        }).disposed(by: rankBag)
        
        view.addSubview(enumeratorsView)
        enumeratorsView.snp.makeConstraints { make in
            make.top.equalTo(dacquoiseView.snp.bottom)
            make.left.right.equalToSuperview()
            make.height.equalTo(35)
        }
        
        view.addSubview(uatBtn)
        uatBtn.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.left.equalToSuperview().offset(15)
            make.bottom.equalToSuperview().offset(-30)
            make.height.equalTo(56)
        }
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.equalTo(uatBtn.snp.top).offset(-5)
            make.top.equalTo(enumeratorsView.snp.bottom)
        }
        
        enumeratorsView.fabricationBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            enumeratorsView.fabricationBtn.setImage(UIImage(named: "label_wall_sel"), for: .normal)
            enumeratorsView.interpreterBtn.setImage(UIImage(named: "BoxingIconBank"), for: .normal)
            self.assignArray.accept(self.discreteArray.value)
            self.index = 0
        }).disposed(by: rankBag)
        
        enumeratorsView.interpreterBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            self.index = 1
            enumeratorsView.fabricationBtn.setImage(UIImage(named: "Multiuser_e_wallet"), for: .normal)
            enumeratorsView.interpreterBtn.setImage(UIImage(named: "mabel_bank_sel"), for: .normal)
            self.assignArray.accept(self.pacemakerArray.value)
        }).disposed(by: rankBag)
        
        dacquoiseView.addBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            let umlList = AahWindowsViewController()
            umlList.tabascoArray.accept(self.tabascoArray.value)
            self.navigationController?.pushViewController(umlList, animated: true)
        }).disposed(by: rankBag)
        
        iabaIaafJabot()
        
        tableView.rx.setDelegate(self).disposed(by: rankBag)
        
        assignArray.asObservable().bind(to: tableView.rx.items(cellIdentifier: "Seldde5jfhfCell", cellType: Seldde5jfhfCell.self)) { index, model, cell in
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            cell.model.accept(model)
        }.disposed(by: rankBag)
        
        self.assignArray.subscribe(onNext: { [weak self] assignArray in
            guard let self = self else { return  }
            if assignArray.count != 0 {
                self.cliqueView.removeFromSuperview()
            }else {
                self.tableView.addSubview(self.cliqueView)
                self.cliqueView.snp.makeConstraints { make in
                    make.centerY.equalToSuperview()
                    make.left.equalToSuperview().offset((informationWidth - 211) * 0.5)
                    make.size.equalTo(CGSize(width: 211, height: 208))
                }
            }
        }).disposed(by: rankBag)
        
        tableView.rx.itemSelected.subscribe(onNext: { [weak self] indexPath in
            if let cell = self?.tableView.cellForRow(at: indexPath) as? Seldde5jfhfCell, let model = self?.assignArray.value[indexPath.row] {
                self?.libertyCell?.iaafView.isHidden = true
                cell.iaafView.isHidden = false
                self?.uatBtn.isEnabled = true
                self?.uatBtn.backgroundColor = UIColor.init(cssStr: "#222233")
                self?.equalityModel.accept(model)
                self?.libertyCell = cell
            }
        }).disposed(by: rankBag)
        
        self.uatBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self, let model = self.equalityModel.value else { return }
            self.clauseAlphabeticallyDom(form: model)
        }).disposed(by: rankBag)
        
    }
}

extension DemarshalActivateViewController: UITableViewDelegate {
    
    private func clauseAlphabeticallyDom(form model: aviolenceModel) {
        loaddimeCfinrad.addLoadingView()
        let assignArray = self.tabascoArray.value
        let uncheckedDict = ["exchange": model.exchange ?? "", "finally": assignArray?[1] ?? "0", "lo": assignArray?[0] ?? "0"]
        let man = BracketVaaljapieRequestManager()
        man.writeRevokeVideo(params: uncheckedDict, pageURL: "/ll/itwas/springs/mother", method: .post) { [weak self] result in
            guard let self = self else { return }
            loaddimeCfinrad.nabobismGabberShape()
            switch result {
            case .success(let success):
                let model = success.preferreda
                if let caballineFaultif = model.faultif {
                    dacLabelledModifier(from: caballineFaultif)
                }
                break
            case .failure(_):
                break
            }
        }
    }
    
    private func iabaIaafJabot() {
        loaddimeCfinrad.addLoadingView()
        let man = BracketVaaljapieRequestManager()
        man.writeRevokeVideo(params: ["info": "1"], pageURL: "/ll/shouting/small/about", method: .post) { [weak self] result in
            loaddimeCfinrad.nabobismGabberShape()
            switch result {
            case .success(let success):
                let model = success.preferreda
                if let assignArray = model.unending {
                    assignArray.forEach {
                        if $0.hearth == 1 {
                            self?.discreteArray.accept($0.aviolence ?? [])
                            self?.assignArray.accept(self?.discreteArray.value ?? [])
                        }else {
                            self?.pacemakerArray.accept($0.aviolence ?? [])
                        }
                    }
                }
                break
            case .failure(_):
                break
            }
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    
    
}
