
import UIKit

class FirstTimeViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text =  DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .medium)
        createTimer()
    }
    
    func createTimer () {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector (updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        myLabel.text =  DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .medium)
    }
}
