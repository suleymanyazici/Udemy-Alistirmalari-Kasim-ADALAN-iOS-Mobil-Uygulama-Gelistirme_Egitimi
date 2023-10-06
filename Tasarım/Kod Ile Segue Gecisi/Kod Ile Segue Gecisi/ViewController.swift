//
//  ViewController.swift
//  Kod Ile Segue Gecisi
//
//  Created by Suleyman YAZICI on 3.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goTo2(_ sender: Any) {
        let kisi  = Kisiler(kisiId: 222, kisiAd: "Ahmet")
        performSegue(withIdentifier: "goFrom1To2", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let gelenVeri = sender as? Kisiler
        print("Gelen Veri : \(gelenVeri!.kisiAd)  \(gelenVeri!.kisiId)")
        if segue.identifier == "goFrom1To2"{
            print("1 den 2 ye geççiş başarılı!!!")
        }
    }
}
