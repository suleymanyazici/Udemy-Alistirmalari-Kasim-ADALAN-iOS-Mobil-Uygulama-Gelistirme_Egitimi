//
//  vc2.swift
//  present_modaly_sayfalar arası gecis
//
//  Created by Suleyman YAZICI on 31.05.2023.
//

import UIKit

class vc2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goto3(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        

        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "vc3") as! vc3
    
        self.present(gidilecekViewController, animated: true)
    }
    
 
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
