
import UIKit
import RxRelay
import StoreKit
@preconcurrency import WebKit

class TranslationImmediateViewController: TcpEagernessViewController {
    
    lazy var dacquoiseView: JfiefnfView = {
        let dacquoiseView = JfiefnfView()
        dacquoiseView.revokeMlabel.text = "ORDER DETAILS"
        return dacquoiseView
    }()
    
    lazy var webView: WKWebView = {
        let config = WKWebViewConfiguration()
        let haarlemUsercc = WKUserContentController()
        let rabaulJsfun = ["guitarGar", "tangerine", "jacketYam", "garlicKiw", "monkeyUgl", "mangoHibi"]
        rabaulJsfun.forEach { haarlemUsercc.add(self, name: $0) }
        config.userContentController = haarlemUsercc
        let webView = WKWebView(frame: .zero, configuration: config)
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.scrollView.bounces = false
        webView.scrollView.alwaysBounceVertical = false
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        webView.scrollView.showsVerticalScrollIndicator = false
        webView.scrollView.showsHorizontalScrollIndicator = false
        webView.navigationDelegate = self
        return webView
    }()
    
    var eagreUrl = BehaviorRelay<String>(value: "")
    
    lazy var progressView: UIProgressView = {
        let progressView = UIProgressView(progressViewStyle: .default)
        progressView.tintColor = UIColor.init(cssStr: "#5AD7F6")
        progressView.trackTintColor = UIColor.init(cssStr: "#F7F7F6")
        return progressView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(dacquoiseView)
        dacquoiseView.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.height.equalTo(dfrtusdejhedhei.wacoLinkageIllinois() + 56)
        }
        
        dacquoiseView.castingBtn.rx.tap.subscribe(onNext: { [weak self] in
            guard let self = self else { return }
            if self.webView.canGoBack {
                self.webView.goBack()
            }else {
                self.navigationController?.popToRootViewController(animated: true)
            }
        }).disposed(by: rankBag)
        
        view.addSubview(webView)
        webView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(dacquoiseView.snp.bottom)
        }
        
        webView.addSubview(progressView)
        progressView.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview()
            make.height.equalTo(0.5)
        }
        
        let overheadExtended = AccessIm.lookupAccessImmediate(url: eagreUrl.value, parameters: YachtyCastingInfo.attributeRabaulHabana()) ?? "".replacingOccurrences(of: " ", with: "%20")
        if let url = URL(string: overheadExtended) {
            webView.load(URLRequest(url: url))
        }
        
        webView.rx.observe(String.self, "title")
            .subscribe(onNext: { [weak self] title in
                DispatchQueue.main.async {
                    self?.dacquoiseView.revokeMlabel.text = title ?? ""
                }
            }).disposed(by: rankBag)
        
        webView.rx.observe(Double.self, "estimatedProgress")
            .compactMap { $0 }
            .map { Float($0) }
            .bind(to: progressView.rx.progress)
            .disposed(by: rankBag)
        
        webView.rx.observe(Double.self, "estimatedProgress")
            .compactMap { $0 }
            .filter { $0 == 1.0 }
            .subscribe(onNext: { [weak self] _ in
                self?.progressView.setProgress(0.0, animated: false)
                self?.progressView.isHidden = true
            })
            .disposed(by: rankBag)
        
    }
    
}

extension TranslationImmediateViewController: WKScriptMessageHandler, WKNavigationDelegate {
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print("message:\(message.name)")
        
        switch message.name {
        case "garlicKiw":
            self.navigationController?.popToRootViewController(animated: true)
            
        case "mangoHibi":
            digitalSdkBandwidth()
            
        case "jacketYam":
            self.navigationController?.popViewController(animated: true)
            
        case "guitarGar":
            enumeratorsMultidimensionalUbe(with: message.body)
            
        case "monkeyUgl":
            pointerWacoQandahar(with: message.body)
            
        case "tangerine":
            nabobDeferForward(with: message.body)
            
        default:
            break
        }
    }
    
    private func enumeratorsMultidimensionalUbe(with body: Any) {
        guard let array = body as? [String], let first = array.first, let last = array.last else { return }
        browserConfig = BackgroundHandLocationConfig()
        browserConfig?.startUpdatingLocation { model in
            WhereTriangulationMessInfo.advancedXsltRabbi(from: model, proloID: first, st: last, jd: dietDict.librarySchemaQbp(), type: "10")
        }
    }
    
    private func pointerWacoQandahar(with body: Any) {
        guard let array = body as? [String], let urlString = array.first else { return }
        
        if urlString.hasPrefix("AgaranPesoMail://") {
            raceIadFetch(urlString)
        } else {
            caballeroForwardingConnected(urlString)
        }
    }
    
    private func raceIadFetch(_ urlString: String) {
        guard let range = urlString.range(of: "//") else { return }
        let email = urlString[range.upperBound...]
        
        if let manifestMail = URL(string: "mailto:\(email)") {
            let parameterizeStr = UserDefaults.standard.string(forKey: LOGIN_LOGIN) ?? ""
            let bitmapContent = "AgaranPeso: \(parameterizeStr)"
            var habatsuString = "\(manifestMail)?body=\(bitmapContent)"
            habatsuString = habatsuString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            if let url = URL(string: habatsuString), UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
    
    private func caballeroForwardingConnected(_ urlString: String) {
        guard let range = urlString.range(of: "//") else { return }
        let phoneNumber = urlString[range.upperBound...]
        if let idePhone = URL(string: "tel://\(phoneNumber)"), UIApplication.shared.canOpenURL(idePhone) {
            UIApplication.shared.open(idePhone, options: [:], completionHandler: nil)
        }
    }
    
    private func nabobDeferForward(with body: Any) {
        guard let array = body as? [String], let first = array.first else { return }
        self.dacLabelledModifier(from: first)
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        guard let url = navigationAction.request.url else {
            decisionHandler(.allow)
            return
        }
        
        if equalityWildcardSab(url) {
            cashawMicroNearest(url)
            decisionHandler(.cancel)
        } else {
            decisionHandler(.allow)
        }
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        decisionHandler(.allow)
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        loaddimeCfinrad.addLoadingView()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        loaddimeCfinrad.nabobismGabberShape()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        loaddimeCfinrad.nabobismGabberShape()
    }
    
    private func equalityWildcardSab(_ url: URL) -> Bool {
        return url.scheme == "whatsapp" || url.scheme == "mailto"
    }
    
    private func cashawMicroNearest(_ url: URL) {
        guard UIApplication.shared.canOpenURL(url) else {
            showToast(for: url)
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    private func showToast(for url: URL) {
        if url.scheme == "whatsapp" {
            ToastViewConfig.showToast(message: "Please install WhatsApp to continue.")
        } else if url.scheme == "mailto" {
            ToastViewConfig.showToast(message: "Please install and configure the email app on your device.")
        }
    }
    
    private func digitalSdkBandwidth() {
        if #available(iOS 14.0, *) {
            if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                SKStoreReviewController.requestReview(in: scene)
            }
        } else {
            SKStoreReviewController.requestReview()
        }
    }
    
}
