//
//  ViewController.swift
//  Giriş Yap Örnek
//
//  Created by Suleyman YAZICI on 10.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sifreLabel: UITextField!
    @IBOutlet weak var kullaniciAdiLable: UITextField!
    let d = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ka = d.string(forKey: "kullanıcıAdı") ?? "bos"
        let s = d.string(forKey: "sifre") ?? "bos"
        
        if ka != "bos" &&  s != "bos"{
            performSegue(withIdentifier: "girisToAna", sender: nil)
        }
        
    }

    @IBAction func girisYapButton(_ sender: Any) {
        if let ka = kullaniciAdiLable.text , let s = sifreLabel.text{
            if ka == "admin" && s == "123456"{
                d.set(ka, forKey: "kullanıcıAdı")
                d.set(s, forKey: "sifre")
                print("giriş başarılı")
                performSegue(withIdentifier: "girisToAna", sender: nil)
            }else{
                print("kullanıcı adı yanlış")
            }
        }
    }
}

