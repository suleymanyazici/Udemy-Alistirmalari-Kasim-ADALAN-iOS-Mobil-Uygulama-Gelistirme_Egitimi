//
//  ViewController2.swift
//  Navigation Controller Calismasi
//
//  Created by Suleyman YAZICI on 11.06.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmented(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            print("First Seçildi")
        case 1:
            print("Second Seçildi")
        default:
            break
        }
    }
    

}
