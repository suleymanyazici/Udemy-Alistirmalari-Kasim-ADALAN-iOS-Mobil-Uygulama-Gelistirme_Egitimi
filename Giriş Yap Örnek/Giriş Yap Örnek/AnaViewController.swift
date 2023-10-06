//
//  AnaViewController.swift
//  Giriş Yap Örnek
//
//  Created by Suleyman YAZICI on 10.08.2023.
//

import UIKit

class AnaViewController: UIViewController {
    @IBOutlet weak var kaLabel: UILabel!
    let d = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()

        let ka = d.string(forKey: "kullanıcıAdı")
        kaLabel.text = ka
    }
    
    @IBAction func cikis(_ sender: Any) {
        d.removeObject(forKey: "kullanıcıAdı")
        d.removeObject(forKey: "sifre")
        
        performSegue(withIdentifier: "anaToGiris", sender: nil)
    }
    
}
