//
//  ViewController2.swift
//  Notification Center
//
//  Created by Suleyman YAZICI on 19.09.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func sentButton(_ sender: Any) {
    
        let person = Persons(name: "Ahmet", no: 034343)

        
//Bu şekilde veriyi gönderdik şimdi istediğimiz sayfada yakalayacağız.
        NotificationCenter.default.post(name: .notificationName
                                        , object: nil
                                        , userInfo: ["mesaj" : "MErhaba", "tarih" : Date(),"nesne" : person])
        //User info ile dictionary formatında veri gönderilebilir.
    }
    
   
}
