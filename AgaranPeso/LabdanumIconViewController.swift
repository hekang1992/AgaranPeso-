
import UIKit

class LabdanumIconViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.backgroundColor = .white
        tabBar.isTranslucent = false
        
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.1
        tabBar.layer.shadowOffset = CGSize(width: 0, height: -2)
        tabBar.layer.shadowRadius = 10
        
        let iterationHome = HabanaWaddieViewController()
        let jacanaProfile = QdaOpenViewController()
        
        
        
        jacanaProfile.tabBarItem = UITabBarItem(
            title: "Center",
            image: UIImage(named: "saxPicCennormal")?.withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "pdaRightCensel")?.withRenderingMode(.alwaysOriginal)
        )
        
        iterationHome.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(named: "ubietyLeftHomenormal")?.withRenderingMode(.alwaysOriginal),
            selectedImage: UIImage(named: "cryptographyImageHomesel")?.withRenderingMode(.alwaysOriginal)
        )
        
        iterationHome.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)

        jacanaProfile.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)

        viewControllers = [
            SabaothDomViewController(rootViewController: iterationHome),
            SabaothDomViewController(rootViewController: jacanaProfile)
        ]
        tabBar.tintColor = UIColor.init(cssStr: "#333344")
        tabBar.unselectedItemTintColor = UIColor.init(cssStr: "#CDCDDE")
    }
}
