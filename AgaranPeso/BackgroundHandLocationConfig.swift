
import CoreLocation
import RxSwift
import RxRelay

class BackgroundHandLocationConfig: NSObject {
    
    private var locationManager = CLLocationManager()
    
    private var determinantsBlock: ((ffefmdaoo) -> Void)?
    
    let rankBag = DisposeBag()
    
    var model = BehaviorRelay<ffefmdaoo?>(value: nil)
    
    var type: String = "0"
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        model.debounce(RxTimeInterval.milliseconds(700), scheduler: MainScheduler.instance)
            .distinctUntilChanged()
            .subscribe(onNext: { addressModel in
                if let addressModel = addressModel {
                    self.determinantsBlock?(addressModel)
                }
            }).disposed(by: rankBag)
    }
    
}

extension BackgroundHandLocationConfig: CLLocationManagerDelegate  {
    
    func startUpdatingLocation(completion: @escaping (ffefmdaoo) -> Void) {
        determinantsBlock = completion
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            guard let self = self else { return }
            if CLLocationManager.authorizationStatus() == .denied {
                let recordsetLmodel = ffefmdaoo()
                self.model.accept(recordsetLmodel)
            } else {
                locationManager.startUpdatingLocation()
            }
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedWhenInUse, .authorizedAlways:
            locationManager.startUpdatingLocation()
        case .denied, .restricted:
            let recordsetLmodel = ffefmdaoo()
            self.model.accept(recordsetLmodel)
            locationManager.stopUpdatingLocation()
        default:
            break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        let model = ffefmdaoo()
        model.strongest = location.coordinate.longitude
        model.battalion = location.coordinate.latitude
        let raceGeocoder = CLGeocoder()
        let comLion = CLLocation(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        raceGeocoder.reverseGeocodeLocation(comLion) { [weak self] placemarks, error in
            guard let self = self, let placemark = placemarks?.first else { return }
            model.tosee = placemark.locality ?? ""
            model.thatwas = (placemark.subLocality ?? "") + (placemark.thoroughfare ?? "")
            model.unfeigned = placemark.country ?? ""
            model.library = placemark.isoCountryCode ?? ""
            model.godis = placemark.administrativeArea ?? ""
            self.model.accept(model)
            self.locationManager.stopUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("api======fasdr===error:\(error)")
    }
    
}

class ffefmdaoo: NSObject {
    var tosee : String = ""
    var library : String = ""
    var unfeigned : String = ""
    var thatwas : String = ""
    var battalion: Double = 0.0
    var strongest: Double = 0.0
    var godis : String = ""
}
