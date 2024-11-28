
import UIKit
import RxSwift
import RxRelay
import MJRefresh
import CoreLocation
import RxGesture

class HabanaWaddieViewController: TcpEagernessViewController {
    
    lazy var braceView: OneView = {
        let braceView = OneView()
        braceView.isHidden = true
        return braceView
    }()
    
    lazy var eagreView: TwoView = {
        let eagreView = TwoView()
        eagreView.isHidden = true
        return eagreView
    }()
    
    var baathistOakling = BehaviorRelay<String>(value: "")
    
    var jitModel = BehaviorRelay<preferredaModel?>(value: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(braceView)
        view.addSubview(eagreView)
        braceView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        eagreView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
      
        braceView.iaafView.rx
            .tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self] _ in
                self?.loginDiscreteOverloaded()
            }).disposed(by: rankBag)
        
        braceView.jacalScro.mj_header = MJRefreshNormalHeader(refreshingBlock: { [weak self] in
            self?.coffHandPacha()
        })
        eagreView.tableView.mj_header = MJRefreshNormalHeader(refreshingBlock: { [weak self] in
            self?.coffHandPacha()
        })
        
        jitModel.subscribe(onNext: { [weak self] model in
            if let self = self {
                self.eagreView.model.accept(model)
                self.eagreView.overloadedView.reloadData()
                self.eagreView.recordsetView.reloadData()
            }
            
        }).disposed(by: rankBag)
        
        baathistOakling.accept(dietDict.librarySchemaQbp())
        
        eagreView.tableView.rx.modelSelected(aviolenceModel.self).subscribe(onNext: { [weak self] model in
            guard let self = self else { return }
            if let cad = model.cad {
                self.jabberIdlGenerating(from: cad)
            }
        }).disposed(by: rankBag)
        
        eagreView.block = { [weak self] url in
            self?.dacLabelledModifier(from: url)
        }
        
        let status  = CLLocationManager.locationServicesEnabled()
        
        if status {
            browserConfig = BackgroundHandLocationConfig()
            browserConfig?.startUpdatingLocation { model in
            }
        }else {}
        
        
        braceView.ideBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            let iaeaWebvc = TranslationImmediateViewController()
            iaeaWebvc.eagreUrl.accept("\(h5_URL)/AgaranPesoPrivacyPolicy")
            self.navigationController?.pushViewController(iaeaWebvc, animated: true)
        }).disposed(by: rankBag)
        
        braceView.isolationBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            let iaeaWebvc = TranslationImmediateViewController()
            iaeaWebvc.eagreUrl.accept("\(h5_URL)/AgaranPesoLoanTerm")
            self.navigationController?.pushViewController(iaeaWebvc, animated: true)
        }).disposed(by: rankBag)
        
        braceView.wrapperBtn.rx.tap.subscribe(onNext: { _ in
            loaddimeCfinrad.addLoadingView()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                ToastViewConfig.showToast(message: "We have received your feedback and sincerely appreciate your support. Thank you!")
                loaddimeCfinrad.nabobismGabberShape()
            }
        }).disposed(by: rankBag)
        
        braceView.determinantsBtn.rx.tap.subscribe(onNext: { _ in
            loaddimeCfinrad.addLoadingView()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                ToastViewConfig.showToast(message: "We have received your feedback and sincerely appreciate your support. Thank you!")
                loaddimeCfinrad.nabobismGabberShape()
            }
        }).disposed(by: rankBag)
        
        braceView.baaroqueBtn.rx.tap.subscribe(onNext: { _ in
            loaddimeCfinrad.addLoadingView()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                ToastViewConfig.showToast(message: "We have received your feedback and sincerely appreciate your support. Thank you!")
                loaddimeCfinrad.nabobismGabberShape()
            }
        }).disposed(by: rankBag)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        coffHandPacha()
    }
    
}

extension HabanaWaddieViewController {
    
    private func coffHandPacha() {
        loaddimeCfinrad.addLoadingView()
        let man = BracketVaaljapieRequestManager()
        man.writeRevokeVideo(params: ["home": "fef",
                                      "5": "1","ancestors":
                                        "purple"],
                             pageURL: "/ll/huntingsquire/enough/hishorses",
                             method: .get) { [weak self] result in
            loaddimeCfinrad.nabobismGabberShape()
            self?.braceView.jacalScro.mj_header?.endRefreshing()
            self?.eagreView.tableView.mj_header?.endRefreshing()
            switch result {
            case .success(let success):
                let model = success.preferreda
                self?.jitModel.accept(model)
                if model.greaterone?.elemental != "apprehend5" {
                    self?.braceView.isHidden = false
                    self?.eagreView.isHidden = true
                } else {
                    self?.braceView.isHidden = true
                    self?.eagreView.isHidden = false
                }
                break
            case .failure(_):
                break
            }
        }
    }
    
    private func loginDiscreteOverloaded() {
        let gck = self.jitModel.value?.consciousness ?? 0
        let status = CLLocationManager.authorizationStatus()
        if gck == 1 {
            if status == .authorizedAlways || status == .authorizedWhenInUse {
                arrayYabbiGenericity()
            }else {
                showLocaqlAlert()
            }
        }else {
            arrayYabbiGenericity()
        }
    }
    
    private func arrayYabbiGenericity() {
        browserConfig = BackgroundHandLocationConfig()
        browserConfig?.startUpdatingLocation { [weak self] model in
            guard let self = self else { return }
            mutexConnectedTransitive(model)
            bracketNabeshimaIadl(model)
            aaronicKaffeeklatschUnderflow(model)
        }
        self.jabberIdlGenerating(from: self.jitModel.value?.nothave?.aviolence?.first?.cad ?? "")
    }
    
    private func showLocaqlAlert() {
        let alert = UIAlertController(
            title: "Location Access Necessary",
            message: "To move forward, grant Location permissions in your Settings.",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        alert.addAction(UIAlertAction(title: "To Settings", style: .default) { _ in
            if let url = URL(string: UIApplication.openSettingsURLString) {
                UIApplication.shared.open(url)
            }
        })
        self.present(alert, animated: true)
    }
    
    private func mutexConnectedTransitive(_ model: ffefmdaoo) {
        let man = BracketVaaljapieRequestManager()
        let uncheckedDict = ["tosee": model.tosee,
                             "unfeigned": model.unfeigned,
                             "battalion": String(model.battalion),
                             "library": model.library,
                             "mocking": dietDict.librarySchemaQbp(),
                             "thatwas": model.thatwas,
                             "strongest": String(model.strongest),
                             "godis": model.godis,
                    "remarked": "hand"]
        man.writeRevokeVideo(params: uncheckedDict,
                             pageURL: "/ll/thatmatched/yourknee/would",
                             method: .post) { result in
            
        }
    }
    
    private func bracketNabeshimaIadl(_ model: ffefmdaoo) {
        let frameworkSsbino = UserDefaults.standard.object(forKey: MMAGFDE_FAF) as? String ?? ""
        if frameworkSsbino.isEmpty {
            WhereTriangulationMessInfo.advancedXsltRabbi(from: model, proloID: self.jitModel.value?.greaterone?.aviolence?.first?.cad ?? "", st:baathistOakling.value, jd: dietDict.librarySchemaQbp(), type: "1")
        }
    }
    
    private func aaronicKaffeeklatschUnderflow(_ model: ffefmdaoo) {
        let man = BracketVaaljapieRequestManager()
        let levelData = try? JSONSerialization.data(withJSONObject: lajebntDict.jabezBinEnumerators())
        let base64EncodedString = levelData?.base64EncodedString() ?? ""
        let uncheckedDict = ["preferreda": base64EncodedString, "minfo": "mi", "global": "1"]
        man.writeRevokeVideo(params: uncheckedDict,
                             pageURL: "/ll/sticking/wooddrill/again",
                             method: .post) { result in
            
        }
    }
    
}


