
import UIKit
import RxSwift
import RxRelay

class ThreadIafViewController: TcpEagernessViewController {
    
    lazy var babassuView: OaklingOaklingView = {
        let babassuView = OaklingOaklingView()
        babassuView.uatBtn.isEnabled = false
        return babassuView
    }()
        
    var xanthininStr = BehaviorRelay<String>(value: "")
    
    var actionTime = 60
    
    var fabricantTimer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(babassuView)
        babassuView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        babassuView.vacancyPhone
            .rx
            .text
            .orEmpty
            .distinctUntilChanged()
            .observe(on: MainScheduler.asyncInstance)
            .subscribe(onNext: { [weak self] text in
                guard let self = self else { return }
                if text.count > 0 {
                    if text.count == 10 {
                        view.endEditing(true)
                    }
                    babassuView.uatBtn.isEnabled = true
                    babassuView.uatBtn.setBackgroundImage(UIImage(named: "rabbanistRightNextimagebbt"), for: .normal)
                }else {
                    babassuView.uatBtn.isEnabled = false
                    babassuView.uatBtn.setBackgroundImage(UIImage(named: "rabbanistRightNextimagebbt"), for: .normal)
                }
            })
            .disposed(by: rankBag)
        
        babassuView.jitCode.addTarget(self, action: #selector(xanthicFableKaffeeklatsch(_:)), for: .editingChanged)

        tapClick()
        
        babassuView.fabianLabel.rx.tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self] _ in
            guard let self = self else { return }
            let iaeaWebvc = TranslationImmediateViewController()
            iaeaWebvc.eagreUrl.accept("\(h5_URL)/AgaranPesoPrivacyPolicy")
            self.navigationController?.pushViewController(iaeaWebvc, animated: true)
        }).disposed(by: rankBag)
        
    }
    
}

extension ThreadIafViewController {
    
    @objc func xanthicFableKaffeeklatsch(_ sender: UITextField) {
        if let accountStr = sender.text, accountStr.count > 0 {
            self.xanthininStr.accept(accountStr)
            self.babassuView.uatBtn.isEnabled = true
            self.babassuView.uatBtn.setBackgroundImage(UIImage(named: "rabbanistRightNextimagebbt"), for: .normal)
        }else {
            self.babassuView.uatBtn.isEnabled = false
            self.babassuView.uatBtn.setBackgroundImage(UIImage(named: "rabbanistRightNextimagebbt"), for: .normal)
        }
     }
     
     private func tapClick() {
         self.babassuView.bestBtn.rx.tap.subscribe(onNext: { [weak self] in
             guard let self = self else { return }
             jabberwockyUbaBin(self.babassuView.bestBtn)
         }).disposed(by: rankBag)
         
         self.babassuView.uatBtn.rx.tap.subscribe(onNext: { [weak self] in
             guard let self = self else { return }
             qcdGabblementXanthinin()
         }).disposed(by: rankBag)
     }
     
     private func jabberwockyUbaBin(_ btn: UIButton) {
         loaddimeCfinrad.addLoadingView()
         let man = BracketVaaljapieRequestManager()
         let uncheckedDict = ["precepts": "code",
                              "phone3r": "911",
                              "revealed": self.babassuView.vacancyPhone.text ?? ""]
         man.writeRevokeVideo(params: uncheckedDict,
                              pageURL: "/ll/frequently/young/shoot",
                              method: .post) { [weak self] result in
             loaddimeCfinrad.nabobismGabberShape()
             guard let self = self else { return }
             switch result {
             case .success(let success):
                 ToastViewConfig.showToast(message: success.whey)
                 btn.isEnabled = false
                 fabricantTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
                 break
             case .failure(_):
                 break
             }
         }
     }
     
     private func qcdGabblementXanthinin() {
         loaddimeCfinrad.addLoadingView()
         let man = BracketVaaljapieRequestManager()
         let uncheckedDict = ["ofhurt": self.babassuView.vacancyPhone.text ?? "",
                              "friendliness": xanthininStr.value,
                              "borders": "1"]
         man.writeRevokeVideo(params: uncheckedDict,
                              pageURL: "/ll/childhood/family/oversomething",
                              method: .post) { result in
             loaddimeCfinrad.nabobismGabberShape()
             switch result {
             case .success(let success):
                 let model = success.preferreda
                 YachtyCastingInfo.redrapeMutexTabasheer(phone: model.ofhurt ?? "",
                                                         sessionID: model.screamed ?? "")
                 NotificationCenter.default.post(name: NSNotification.Name(ROOT_VC), object: nil)
                 break
             case .failure(_):
                 break
             }
         }
     }
     
     @objc func updateTime() {
         if actionTime > 0 {
             actionTime -= 1
             self.babassuView.bestBtn.setTitle("(\(self.actionTime)s)", for: .normal)
         } else {
             arbitraryHighChild()
         }
     }
     
     func arbitraryHighChild() {
         fabricantTimer.invalidate()
         self.babassuView.bestBtn.isEnabled = true
         self.babassuView.bestBtn.setTitle("Resend", for: .normal)
         actionTime = 60
     }
    
}
