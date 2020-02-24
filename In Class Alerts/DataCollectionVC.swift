//
//  DataCollectionVC.swift
//  In Class Alerts
//
//  Created by Brad D. Messner on 2/24/20.
//  Copyright © 2020 Brad D. Messner. All rights reserved.
//

import UIKit

class DataCollectionVC: UIViewController {

    @IBAction func alert2(_ sender: Any) {
           // Setup the alert
           let alert = UIAlertController(title: "Important Update 2", message: "Mr. Messner is the greatest.", preferredStyle: .alert)
               
           // Add the action
           alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in }))
        
               
           // Display the alert
           self.present(alert,animated: true, completion: nil)
               
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
