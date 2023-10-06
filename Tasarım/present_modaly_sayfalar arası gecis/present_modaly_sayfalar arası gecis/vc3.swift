//
//  vc3.swift
//  present_modaly_sayfalar arası gecis
//
//  Created by Suleyman YAZICI on 31.05.2023.
//

import UIKit

class vc3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goto1(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        

        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "vc1") as! ViewController
    
        self.present(gidilecekViewController, animated: true)
    }
    
    @IBAction func goto2(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        

        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "vc2") as! vc2
    
        self.present(gidilecekViewController, animated: true)
    }
    
}
