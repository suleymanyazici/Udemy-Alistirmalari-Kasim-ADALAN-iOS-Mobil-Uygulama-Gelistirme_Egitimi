//
//  ViewController.swift
//  İOS Widgets
//
//  Created by Suleyman YAZICI on 20.07.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func degistir(_ sender: Any) {
        if let alinanVeri = textField.text {
            label.text = alinanVeri
        }
        
    }
    
}

