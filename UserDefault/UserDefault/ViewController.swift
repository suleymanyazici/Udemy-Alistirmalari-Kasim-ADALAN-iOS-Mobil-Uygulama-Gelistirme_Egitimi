//
//  ViewController.swift
//  UserDefault
//
//  Created by Suleyman YAZICI on 10.08.2023.
//

import UIKit

class ViewController: UIViewController {
    let d = UserDefaults.standard // artık d harfi kayıt için gerekli herşeyi üzerinde tutuyor

    @IBOutlet weak var şabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        d.set("naber", forKey: "ad")
        d.set(50, forKey: "yas")
        d.set(1.50, forKey: "boy")
        d.set(true, forKey: "medenihal")
        
        var arkadas = ["ahmet", "mehmet", "ismet", "husika", "zekeriya", "memet"]
        
        d.set(arkadas, forKey: "array")
        
        var sozluk = ["ahmet" : "mehmet"]
        
        d.set(sozluk, forKey: "dict")
        
        var sayac = d.integer(forKey: "sayac")
        
        sayac = sayac + 1
        d.set(sayac, forKey: "sayac")
        
        şabel.text = "sayac : \(sayac)"
        
        
        
    }
    @IBAction func button(_ sender: Any) {
        let ad = d.string(forKey: "ad")
        let yas = d.integer(forKey: "yas")
        let boy = d.double(forKey: "boy")
        let medeni = d.value(forKey: "medenihal")
        let dizi = d.array(forKey: "array")
        let dictio = d.dictionary(forKey: "dict")
        print(ad!)
        print(yas)
        print(boy)
        print(medeni!)
        print(dizi!)
        print(dictio!)

        
    }
}

