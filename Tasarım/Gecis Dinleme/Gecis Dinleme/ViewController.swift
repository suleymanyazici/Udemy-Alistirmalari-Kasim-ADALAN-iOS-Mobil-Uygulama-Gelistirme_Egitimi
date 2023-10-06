//
//  ViewController.swift
//  Gecis Dinleme
//
//  Created by Suleyman YAZICI on 3.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.hidesBackButton = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goFrom1To2"{
            print("1. sayfadan 2. sayfaya geiş yapıldı")
        }
        if segue.identifier == "goFrom1To3"{
            print("1. sayfadan 3. sayfaya geçiş yapıldı")
        }
    }
}



