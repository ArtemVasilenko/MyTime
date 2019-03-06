
import UIKit

class ThirdTimeViewController: UIViewController {
    
    @IBOutlet weak var labelTimer: UILabel!
    
    @IBOutlet weak var labelMinutes: UILabel!
    
    
    @IBOutlet weak var labelHours: UILabel!
    var timer = Timer()
    var seconds = 0
    var minutes = 0
    var hours = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //createTimer()
        labelTimer.text = "0"
        labelMinutes.text = "0"
        labelHours.text = "0"

    }
    
    func createTimer() {
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(goTimer), userInfo: nil, repeats: true)
    }
    
    
    @objc func goTimer() {
        seconds += 1
        labelTimer.text = String(seconds)
        
        if seconds == 59 {
            seconds = 0
            minutes += 1
            labelMinutes.text = String(minutes)
        }
        
        if minutes == 59 {
            minutes = 0
            hours += 1
            labelHours.text = String(hours)
        }
        
    }
    
    
    
    @IBAction func startButton(_ sender: UIButton) {
        createTimer()
    }
    
    
    @IBAction func stopButton(_ sender: UIButton) {
    }
    
}
