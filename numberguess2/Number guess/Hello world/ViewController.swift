import UIKit

class ViewController: UIViewController {
    var counter = 0
    var test = Int.random(in: 0..<100)
    @IBOutlet weak var texfield: UITextField!
    @IBOutlet weak var message: UILabel!
    //let number = 0
    let number = Int.random(in: 0...100)
   
    @IBOutlet weak var trys: UILabel!
    
    @IBOutlet weak var emoji: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emoji.isHidden = true
     
        
        
         
        print("erraten: \(number)")
    }

    @IBAction func ontouchUpInside(_ sender: UIButton) {
        let guess = Int(texfield.text!)!
        
        message.text = "\(guess)"
        
        if number < Int(guess) {
            message.text = "zu groß"
            counter += 1
        }

        else if number > Int(guess) {
            message.text = "zu klein"
            counter += 1
        }

        else {
            message.text = "richtig"
            counter += 1
            emoji.isHidden = false
            
        }
        
        trys.text = "Anzahl der Versuche \(counter)"
        
        	
    }
    
    
    
   
}

