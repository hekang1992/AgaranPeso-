//
//  AppDelegate.swift
//  LigtasLoan
//
//  Created by LigtasLoan on 2024/10/12.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        pushVc()
        iqkeyman()
        window = UIWindow()
        window?.frame = UIScreen.main.bounds
        window?.rootViewController = MessageOperationViewController()
        window?.makeKeyAndVisible()
        return true
    }

}

extension AppDelegate {
    
    private func iqkeyman() {
        let manager = IQKeyboardManager.shared
        manager.enable = true
        manager.shouldResignOnTouchOutside = true
    }
    
    private func pushVc() {
        NotificationCenter.default.addObserver(self, selector: #selector(setUpRootVc(_ :)), name: NSNotification.Name(ROOT_VC), object: nil)
    }
    
    @objc private func setUpRootVc(_ notification: Notification) {
        if cliqueLogin {
            window?.rootViewController = SabaothDomViewController(rootViewController: LabdanumIconViewController())
        }else {
            window?.rootViewController = SabaothDomViewController(rootViewController: ThreadIafViewController())
        }
    }
    
}
