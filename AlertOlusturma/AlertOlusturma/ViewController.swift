//
//  ViewController.swift
//  AlertOlusturma
//
//  Created by Suleyman YAZICI on 26.07.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func basitAlertAction(_ sender: Any) {
        let alert = UIAlertController(title: "Alert Action", message: "AlertAction", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .destructive)
        let iptalButton = UIAlertAction(title: "İptal", style: .cancel)
        alert.addAction(okButton)
        alert.addAction(iptalButton)
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func gelismisAlertAction(_ sender: Any) {
        let alert = UIAlertController(title: "İçi Dolu Alert", message: "Kullanıcı adı ve şifre giriniz", preferredStyle: .alert)
        alert.addTextField{ textField in  // text field ekledik
            textField.placeholder = "Kullanıcı Adı" // içerisinde yönlendirme yazısı ekledik
            textField.keyboardType = .emailAddress  // Klavye tipini değiştik
        }
        alert.addTextField{ textField in
            textField.placeholder = "Parola"
            textField.isSecureTextEntry = true
            textField.keyboardType = .numberPad
        }
        let kaydetButton = UIAlertAction(title: "Kaydet", style: .destructive){action in
            let alinanKullaniciAdi = (alert.textFields![0] as UITextField).text
            // Bu şekilde textfield içerisindeki veriyi indeks numarasına göre alırız
            // Up Casting yapılarak dönüşüm sağlanır
            let alinanParola = (alert.textFields![1] as UITextField).text
            print("Kullanıcı Adı : \(alinanKullaniciAdi ?? "Kullanıcı Adı Bulunamadı")")
            print("Kullanıcı Adı : \(alinanParola ?? "Parola Bulunamadı")")

            
        }
        alert.addAction(kaydetButton)
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func actionSheat(_ sender: Any) {
        let alert = UIAlertController(title: "Action Sheat", message: "Action Sheat", preferredStyle: .actionSheet)
        let okButton = UIAlertAction(title: "Ok", style: .destructive)
        let iptalButton = UIAlertAction(title: "İptal", style: .cancel)
        alert.addAction(okButton)
        alert.addAction(iptalButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func gelismisActionSheat(_ sender: Any) {
        
    }
    
}

