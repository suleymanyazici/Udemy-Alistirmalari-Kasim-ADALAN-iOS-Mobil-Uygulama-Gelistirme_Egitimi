//
//  ViewController.swift
//  Tamemen Kod ile sayfalar arasi veri tasima
//
//  Created by Suleyman YAZICI on 3.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func gonder(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //Gidilecek sayfanın bulunduğu storyboard tanımlanır
        
        let gidilecekViewController = storyboard.instantiateViewController(withIdentifier: "sayfaB") as! ViewController2
        //Gidilmek istenilen sayfanın id si yazılır ve downcasting yapılarak nereden almak istediğimiz belli olmuş olur.
        
        let gonderileceMesaj = textLabel.text
        //TextLabelden gelen mesajı gonderilecekMEsaja eşitledik
        
        gidilecekViewController.mesaj = gonderileceMesaj!
        //Gonderilecek mesajı diğer class taki değişkene atarız
        
        self.present(gidilecekViewController, animated: true, completion:nil)
    }
    
}

