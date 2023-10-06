//
//  ViewController.swift
//  Show Segue Calismasi
//
//  Created by Suleyman YAZICI on 2.06.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goFrom1To2"{
            print("1. sayfadan 2. safaya geçiş yapıldı")
       }
    }
}

