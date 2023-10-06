//
//  ViewController.swift
//  Segue ile veri taşıma
//
//  Created by Suleyman YAZICI on 9.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gonderB(_ sender: Any) {
        let gelenVeri = textField.text
        performSegue(withIdentifier: "atob", sender: gelenVeri)
    }
    
    @IBAction func gonderC(_ sender: Any) {
        let gelenVeri = textField.text
        performSegue(withIdentifier: "atoc", sender: gelenVeri )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let girdi = textField.text
        if segue.identifier == "atob"{
            print("B ye gecis oldu")
            if sender is String{
                
                let gidecekVeri = segue.destination as! ViewControllerB
                gidecekVeri.mesajB = girdi
            }
        }
        if segue.identifier == "atoc"{
            print ("C ye gecis oldu")
            if sender is String{
                
                let gidecekVeri = segue.destination as! ViewControllerC
                gidecekVeri.mesajC = girdi
            }
    
            
        }
    }
    
}

