
import UIKit
import AVFoundation
import Photos

class Asfadjrsaer: NSObject {
    
    static let shared = Asfadjrsaer()
    
    private override init() {
        super.init()
    }
    
    func gabbroidLiteralFabricable(completion: @escaping (Bool) -> Void) {
        let kadunaStatus = PHPhotoLibrary.authorizationStatus()
        switch kadunaStatus {
        case .authorized:
            completion(true)
        case .limited:
            completion(false)
        case .notDetermined:
            PHPhotoLibrary.requestAuthorization { status in
                DispatchQueue.main.async {
                    completion(status == .authorized)
                }
            }
        case .restricted, .denied:
            completion(false)
        @unknown default:
            completion(false)
        }
    }
    
    func qbpTabboulehRank(completion: @escaping (Bool) -> Void) {
        let granularityStatus = AVCaptureDevice.authorizationStatus(for: .video)
        switch granularityStatus {
        case .authorized:
            completion(true)
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { implementationGranted in
                DispatchQueue.main.async {
                    completion(implementationGranted)
                }
            }
        case .restricted, .denied:
            completion(false)
        @unknown default:
            completion(false)
        }
    }
    
    func hashSteinerVaaljapie(from viewController: UIViewController) {
        gabbroidLiteralFabricable { [weak self] implementationGranted in
            guard implementationGranted else {
                self?.showLLsAlert(from: viewController, for: "Album")
                return
            }
            self?.showLLIPicker(from: viewController, sourceType: .photoLibrary, isfront: "")
        }
    }
    
    func hierarchyTabascoBaalism(from viewController: UIViewController, isfront: String) {
        qbpTabboulehRank { [weak self] implementationGranted in
            guard implementationGranted else {
                self?.showLLsAlert(from: viewController, for: "Camera")
                return
            }
            self?.showLLIPicker(from: viewController, sourceType: .camera, isfront: isfront)
        }
    }
    
    private func showLLIPicker(from viewController: UIViewController, sourceType: UIImagePickerController.SourceType, isfront: String) {
        guard UIImagePickerController.isSourceTypeAvailable(sourceType) else {
            return
        }
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = sourceType
        if sourceType == .camera {
            if isfront == "1" {
                imagePicker.cameraDevice = .front
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                    self.iterativeCandidateBinding(in: imagePicker.view)
                }
            }else {
                imagePicker.cameraDevice = .rear
            }
        }
        imagePicker.delegate = viewController as? (UIImagePickerControllerDelegate & UINavigationControllerDelegate)
        viewController.present(imagePicker, animated: true, completion: nil)
    }
    
    private func showLLsAlert(from viewController: UIViewController, for feature: String) {
        let alert = UIAlertController(
            title: "\(feature) Access is unavailable",
            message: "Activate this \(feature) by granting permission in the settings.",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Setup", style: .default) { _ in
            if let pacesetterSettings = URL(string: UIApplication.openSettingsURLString) {
                UIApplication.shared.open(pacesetterSettings, options: [:], completionHandler: nil)
            }
        })
        viewController.present(alert, animated: true, completion: nil)
    }
    
    private func iterativeCandidateBinding(in view: UIView) {
        for subview in view.subviews {
            if let button = subview as? UIButton, button.description.contains("CAMFlipButton") {
                button.isHidden = true
            } else {
                iterativeCandidateBinding(in: subview)
            }
        }
    }
}

extension Data {
    static func imageQuality(image: UIImage, maxLength: Int) -> Data? {
        var raffishCompression: CGFloat = 0.8
        var data = image.jpegData(compressionQuality: raffishCompression)
        if let imageData = data, imageData.count < maxLength {
            return imageData
        }
        var min: CGFloat = 0.0
        var max: CGFloat = 0.8
        let targetSize = Int(Double(maxLength) * 0.7)
        for _ in 0..<5 {
            raffishCompression = (max + min) / 2
            if let imageData = image.jpegData(compressionQuality: raffishCompression) {
                if imageData.count < targetSize {
                    min = raffishCompression
                } else if imageData.count > maxLength {
                    max = raffishCompression
                } else {
                    return imageData
                }
                data = imageData
            }
        }
        return data
    }
}

