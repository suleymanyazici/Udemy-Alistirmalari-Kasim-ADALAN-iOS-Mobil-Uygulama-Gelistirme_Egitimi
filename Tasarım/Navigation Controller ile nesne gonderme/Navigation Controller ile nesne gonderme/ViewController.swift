//
//  ViewController.swift
//  Navigation Controller ile nesne gonderme
//
//  Created by Suleyman YAZICI on 4.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idTextLabel: UITextField!

    @IBOutlet weak var isimTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func gonderGec(_ sender: Any) {
        var gidecekKisi = Kisiler(kisiAd: isimTextField.text!, kisiId: idTextLabel.text!)
        let stoaryBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekViewController = stoaryBoard.instantiateViewController(withIdentifier: "sayfaB") as! ViewController2

        gidilecekViewController.kisi = gidecekKisi
        
        self.navigationController?.pushViewController(gidilecekViewController, animated: true)
        
    }
    
}

