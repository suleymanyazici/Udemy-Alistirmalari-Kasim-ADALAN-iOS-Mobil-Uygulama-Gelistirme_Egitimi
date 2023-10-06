//
//  ViewController2.swift
//  Gecis Dinleme
//
//  Created by Suleyman YAZICI on 3.06.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goFrom2To3"{
            print("2. sayfadan 3. sayfaya geçiş yapıldı")
        }else{
            print("2. sayfadan 1. sayfaya geçiş yapıldı")
        }
    }
}
