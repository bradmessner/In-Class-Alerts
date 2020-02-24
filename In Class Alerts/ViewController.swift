//
//  ViewController.swift
//  In Class Alerts
//
//  Created by Brad D. Messner on 3/13/19.
//  Copyright © 2019 Brad D. Messner. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    

    @IBAction func displayAlert(_ sender: Any) {
    
    // Setup the alert
    let alert = UIAlertController(title: "Important Update", message: "Mr. Messner is the greatest.", preferredStyle: .alert)
        
    // Add the action
    alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in }))
 
        
    // Display the alert
    self.present(alert,animated: true, completion: nil)
        
    }
    
    
   
    
    @IBAction func loginAlert(_ sender: Any) {
    
    // Design the input collection
    let ac = UIAlertController(title: "What is your username?", message: nil, preferredStyle: .alert)
    ac.addTextField()
    let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac] _ in
    let answer = ac.textFields![0]
    self.usernameField.text = answer.text

        
    // Design the second alert
    let alert = UIAlertController(title: "Welcome:", message: answer.text, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in }))
    
        
    // Display the alert
    self.present(alert,animated: true, completion: nil)}
    ac.addAction(submitAction)
    present(ac, animated: true)
    
}
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func playMedia(_ sender: Any) {
        
    // Play wav file
   var soundID: SystemSoundID = 0
   let soundFile:String=Bundle.main.path(forResource:"siren",ofType: "wav")!
   let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
   AudioServicesCreateSystemSoundID(soundURL, &soundID)
   AudioServicesPlaySystemSound(soundID)
   
        
        
        
    // Vibrate phone
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

