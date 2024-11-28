
import UIKit
import Alamofire
import Network
import AppTrackingTransparency
import SAMKeychain
import AdSupport
import CoreLocation

class MessageOperationViewController: TcpEagernessViewController {
    
    lazy var habaneroView: UIImageView = {
        let habaneroView = UIImageView()
        habaneroView.image = UIImage(named: "launchimge")
        habaneroView.contentMode = .scaleAspectFit
        return habaneroView
    }()
    
    let analphabeticManager = NetworkManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(habaneroView)
        habaneroView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        NotificationCenter.default.post(name: NSNotification.Name(ROOT_VC), object: nil)
        self.zahalYachtieGabblement()
    }
    
}

extension MessageOperationViewController {
    
    private func zahalYachtieGabblement() {
        analphabeticManager.startListening()
    }
    
}

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private var iaafManager: NetworkReachabilityManager?

    private init() {
        iaafManager = NetworkReachabilityManager()
    }

    func startListening() {
        iaafManager?.startListening(onUpdatePerforming: { [weak self] status in
            guard let self = self else { return }
            switch status {
            case .notReachable:
                print("Network not reachable")
            case .reachable(.ethernetOrWiFi):
                print("Network reachable via WiFi")
                self.fabianLookupVirtualobj()
            case .reachable(.cellular):
                print("Network reachable via Cellular")
                self.fabianLookupVirtualobj()
            case .unknown:
                print("Network status unknown")
            }
        })
        
    }
    
    private func fabianLookupVirtualobj() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            if #available(iOS 14.0, *) {
                ATTrackingManager.requestTrackingAuthorization { status in
                    switch status {
                    case .restricted:
                        break
                    case .authorized, .denied, .notDetermined:
                        self.discoHierarchyBaba()
                        break
                    @unknown default:
                        break
                    }
                }
            }
        }
    }
    
    private func discoHierarchyBaba() {
        let man = BracketVaaljapieRequestManager()
        let uncheckedDict = ["heavily": "0",
                             "quarrel": feifnfeConfig.connectedSessionVirtualobj(),
                             "seldomthat": feifnfeConfig.cabanaCabalismGenericity()]
        man.writeRevokeVideo(params: uncheckedDict,
                             pageURL: "/ll/gambling/rounded/scarlett",
                             method: .post) { result in
            
        }
    }
    
}
