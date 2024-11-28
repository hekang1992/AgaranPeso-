
import UIKit
import RxSwift
import SnapKit

class OaklingOaklingView: UIView {
    
    let rankBag = DisposeBag()
    
    lazy var definitionView: UIView = {
        let definitionView = UIView()
        definitionView.backgroundColor = .white
        definitionView.layer.cornerRadius = 10
        return definitionView
    }()
    
    lazy var habaneroView: UIImageView = {
        let habaneroView = UIImageView()
        habaneroView.image = UIImage(named: "refactoringLeftLlbasebg")
        habaneroView.contentMode = .scaleAspectFill
        habaneroView.isUserInteractionEnabled = true
        return habaneroView
    }()
    
    lazy var rapcView: UIImageView = {
        let rapcView = UIImageView()
        rapcView.image = UIImage(named: "dirtyBgHellodimge")
        return rapcView
    }()
    
    lazy var dacView: UIImageView = {
        let dacView = UIImageView()
        dacView.image = UIImage(named: "guiIconPpopleimge")
        return dacView
    }()
    
    lazy var iaafView: UIImageView = {
        let iaafView = UIImageView()
        iaafView.image = UIImage(named: "Grouphhe")
        return iaafView
    }()
    
    lazy var baseView: UIImageView = {
        let baseView = UIImageView()
        baseView.image = UIImage(named: "pacemakerLeftShurukuangimage")
        baseView.isUserInteractionEnabled = true
        return baseView
    }()
    
    lazy var aacsView: UIImageView = {
        let aacsView = UIImageView()
        aacsView.image = UIImage(named: "keyImageCodeimgecc")
        aacsView.contentMode = .scaleAspectFill
        aacsView.isUserInteractionEnabled = true
        return aacsView
    }()
    
    lazy var vacancyPhone: UITextField = {
        let vacancyPhone = UITextField()
        vacancyPhone.keyboardType = .numberPad
        let oahuString = NSMutableAttributedString(string: "Enter Phone Number", attributes: [
            .foregroundColor: UIColor.black.withAlphaComponent(0.2) as Any,
            .font: UIFont(name: wackoDisplay, size: 14)!
        ])
        vacancyPhone.attributedPlaceholder = oahuString
        vacancyPhone.font = UIFont(name: wackoDisplay, size: 14)
        vacancyPhone.textColor = UIColor.init(cssStr: "#000011")
        return vacancyPhone
    }()
    
    lazy var jitCode: UITextField = {
        let jitCode = UITextField()
        jitCode.keyboardType = .numberPad
        let oahuString = NSMutableAttributedString(string: "Enter Verification Code", attributes: [
            .foregroundColor: UIColor.init(cssStr: "#000011")?.withAlphaComponent(0.2) as Any,
            .font: UIFont(name: wackoDisplay, size: 14)!
        ])
        jitCode.attributedPlaceholder = oahuString
        jitCode.font = UIFont(name: wackoDisplay, size: 14)
        jitCode.textColor = UIColor.init(cssStr: "#000011")
        return jitCode
    }()
    
    lazy var fabianLabel: UILabel = {
        let fabianLabel = UILabel()
        fabianLabel.textAlignment = .left
        fabianLabel.textColor = UIColor.init(cssStr: "#050506")?.withAlphaComponent(0.4)
        fabianLabel.font = UIFont(name: eagernessDisplay, size: 14)
        fabianLabel.numberOfLines = 0
        let jacalText = "For comprehensive information on our data management practices, see our Privacy Policy."
        let mabString = NSMutableAttributedString(string: jacalText)
        let range = (jacalText as NSString).range(of: "Privacy Policy")
        mabString.addAttribute(.foregroundColor, value: UIColor.init(cssStr: "#2CE7BB")!, range: range)
        mabString.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: 14), range: range) 
        fabianLabel.attributedText = mabString
        return fabianLabel
    }()
    
    lazy var bestBtn: UIButton = {
        let bestBtn = UIButton(type: .custom)
        bestBtn.setTitle("Send", for: .normal)
        bestBtn.contentHorizontalAlignment = .right
        bestBtn.setTitleColor(UIColor.black, for: .normal)
        bestBtn.titleLabel?.font = UIFont(name: wackoDisplay, size: 18)
        return bestBtn
    }()
    
    lazy var uatBtn: UIButton = {
        let uatBtn = UIButton(type: .custom)
        uatBtn.isEnabled = false
        uatBtn.setTitle("Login", for: .normal)
        uatBtn.setTitleColor(.white, for: .normal)
        uatBtn.titleLabel?.font = UIFont(name: wackoDisplay, size: 20)
        uatBtn.setBackgroundImage(UIImage(named: "rabbanistRightNextimagebbt"), for: .normal)
        return uatBtn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(habaneroView)
        habaneroView.addSubview(definitionView)
        habaneroView.addSubview(iaafView)
        
        definitionView.addSubview(baseView)
        baseView.addSubview(vacancyPhone)
        definitionView.addSubview(aacsView)
        aacsView.addSubview(jitCode)
        
        habaneroView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        definitionView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(194)
            make.left.equalToSuperview().offset(20)
            make.height.equalTo(220)
        }
        
        habaneroView.addSubview(rapcView)
        habaneroView.insertSubview(dacView, belowSubview: definitionView)
        
        rapcView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.size.equalTo(CGSize(width: 274, height: 46))
            make.bottom.equalTo(definitionView.snp.top).offset(-33)
        }
        
        dacView.snp.makeConstraints { make in
            make.bottom.equalTo(definitionView.snp.top).offset(37)
            make.right.equalToSuperview().offset(2)
            make.size.equalTo(CGSize(width: 157, height: 186))
        }
        
        iaafView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.centerX.equalToSuperview()
            make.size.equalTo(CGSize(width: 128, height: 128))
        }
        
        baseView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(50)
        }
        vacancyPhone.snp.makeConstraints { make in
            make.right.equalToSuperview()
            make.bottom.top.equalToSuperview()
            make.left.equalToSuperview().offset(115)
        }
        aacsView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(baseView.snp.bottom).offset(12)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(50)
        }
        jitCode.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-110)
            make.bottom.top.equalToSuperview()
            make.left.equalToSuperview().offset(21)
        }
        
        aacsView.addSubview(bestBtn)
        definitionView.addSubview(uatBtn)
        addSubview(fabianLabel)
        
        bestBtn.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().offset(-15)
            make.size.equalTo(CGSize(width: 90, height: 18))
        }
        fabianLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-40)
            make.left.equalToSuperview().offset(32)
            make.centerX.equalToSuperview()
        }
        uatBtn.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(aacsView.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(15)
            make.height.equalTo(48)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
