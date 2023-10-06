//
//  ViewController.swift
//  File Islemleri
//
//  Created by Suleyman YAZICI on 11.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func textOkuButton(_ sender: Any) {
        let mesaj = textField.text
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first{
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            do{
                try mesaj?.write(to: dosyaYolu, atomically: false, encoding: String.Encoding.utf8)
                textField.text = ""
            }catch{
                print("Dosya yazılırken hata alındı")
            }
        }
    }
    @IBAction func textYazButton(_ sender: Any) {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first{
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            do{
                textField.text =  try String(contentsOf: dosyaYolu, encoding: String.Encoding.utf8)
            }catch{
                print("Okuma işlemi sırasında hata alındı")
            }
        }
    }
    @IBAction func textSilButton(_ sender: Any) {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first{
            let dosyaYolu = dir.appendingPathComponent("dosyam.txt")
            do{
                
                if FileManager.default.fileExists(atPath: dosyaYolu.path){
                    try FileManager.default.removeItem(at: dosyaYolu)
                    textField.text = ""
                }
                
            }catch{
                print("Dosya silme işlemi sırasında hata alındı")
            }
        }
    }
    @IBAction func resimOkuButton(_ sender: Any) {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first{
            let dosyaYolu = dir.appendingPathComponent("resimim.jpg")
            let resim = UIImage(named: "smile")
            do{
                try resim?.pngData()?.write(to: dosyaYolu)
            }
            catch{
                print("Resim okunurken hata ile karşılaşıldı")
            }
        }
    }
    
    @IBAction func resmiYazButton(_ sender: Any) {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first{
            let dosyaYolu = dir.appendingPathComponent("resimim.jpg")
            imageView.image = UIImage(contentsOfFile: dosyaYolu.path)
        }
    }
    @IBAction func resmiSilButton(_ sender: Any) {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first{
            let dosyaYolu = dir.appendingPathComponent("resimim.jpg")
            if FileManager.default.fileExists(atPath: dosyaYolu.path){
            do {
                try FileManager.default.removeItem(at: dosyaYolu)
            }catch{
                print("Resim silinirken bir hata oluştu ")
            }
            }
        }
    }
}

