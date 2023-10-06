//
//  ViewController.swift
//  coredata Deneme
//
//  Created by Suleyman YAZICI on 13.08.2023.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    let kisiListesi = [Kisiler]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func KisiAdd(){
        
        let kisi = Kisiler(context : context)
        kisi.kisi_ad = "Ahmet"
        kisi.kisi_yas = 20
        
        appDelegate.saveContext()
    }
    

}

