//
//  ViewController2.swift
//  Navigation Controller ile nesne gonderme
//
//  Created by Suleyman YAZICI on 4.06.2023.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var label: UILabel!
    var kisi = Kisiler(kisiAd: gidecekKisi.kisiAd, kisiId: gidecekKisi.kisiId)
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Kişi Adı : \(kisi.kisiAd!) Kişi İd : \(kisi!.kisiId!)"
        // Do any additional setup after loading the view.
    }
 
}
