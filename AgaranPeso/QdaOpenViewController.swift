
import UIKit
import RxSwift
import TYAlertController

















class QdaOpenViewController: TcpEagernessViewController {

    lazy var feidffView: feifjJIongView = {
        let feidffView = feifjJIongView()
        return feidffView
    }()
    
    lazy var assemblyView: A2AQandaharDelView = {
        let assemblyView = A2AQandaharDelView(frame: UIScreen.main.bounds)
        return assemblyView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(feidffView)
        feidffView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        tfjdrgfctap()
    }

}


extension QdaOpenViewController {
    
    private func tfjdrgfctap() {
        feidffView.itemView1.btn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            let setfaefVc = OedweeViewController()
            self.navigationController?.pushViewController(setfaefVc, animated: true)
        }).disposed(by: rankBag)
        
        feidffView.itemView2.btn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            let iaeaWebvc = TranslationImmediateViewController()
            iaeaWebvc.eagreUrl.accept("\(h5_URL)")
            self.navigationController?.pushViewController(iaeaWebvc, animated: true)
        }).disposed(by: rankBag)
        
        feidffView.itemView3.btn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            let iaeaWebvc = TranslationImmediateViewController()
            iaeaWebvc.eagreUrl.accept("\(h5_URL)/raccoonQui")
            self.navigationController?.pushViewController(iaeaWebvc, animated: true)
        }).disposed(by: rankBag)
        
        feidffView.itemView4.btn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            let setVc = agernessViewController()
            self.navigationController?.pushViewController(setVc, animated: true)
        }).disposed(by: rankBag)
        
        feidffView.itemView5.btn.rx.tap.subscribe(onNext: { [weak self] in
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
        
        feidffView.itemView6.btn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            self.assemblyView.iaafView.image = UIImage(named: "rawIconOutimage")
            self.assemblyView.btn1.setImage(UIImage(named: "iadlGExim"), for: .normal)
            let lookupAlert = TYAlertController(alert: self.assemblyView, preferredStyle: .alert)
            self.present(lookupAlert!, animated: true)
            self.assemblyView.block = {
                self.labialiseVectorMac()
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
    
    private func labialiseVectorMac() {
        loaddimeCfinrad.addLoadingView()
        let man = BracketVaaljapieRequestManager()
        man.writeRevokeVideo(params: ["thatstupid": "1", "silenceanything": "trump"], pageURL: "/ll/mothers/spring/journeyed", method: .get) { result in
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
