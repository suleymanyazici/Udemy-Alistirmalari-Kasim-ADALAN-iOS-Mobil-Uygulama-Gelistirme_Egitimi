//
//  ViewController.swift
//  Notification Center
//
//  Created by Suleyman YAZICI on 18.09.2023.


//Swift dilinde notification center veri aktarımı için kullanılır istenilen yerden istenildiği yere verş aktarmı yapılabilir

//Notification Center ler gönderen bir de alan olarak Observer ler vardır

//Alsında bu bir tür bildirimdir fakat bil veriyi bi sayfadan diğer sayfaya bildirimm işlemi yapmaktadır


import UIKit

extension Notification.Name{
    static let notificationName = Notification.Name("yayinim")
    //Globalde heryerden erişilebilmesi için bu işlem yapılmıştır.
    //Bu şekilde istenilen veriye bütün sayfalardan erişilebilir omalı
}

class ViewController: UIViewController {

    @IBOutlet weak var notificationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

//Burada observer yakalayıcımız oluyor bunun sayesinde istediğimiz sayfada bilgiyiyi yakalayabiliyoruz
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(self.yap(notification:)), name: .notificationName, object: nil)
        

    }
    @objc func yap(notification:NSNotification){
        let gelenTarih = notification.userInfo?["tarih"]
        let gelenMesaj = notification.userInfo?["mesaj"]
        let gelenKisiNesnesi = notification.userInfo?["nesne"] as! Persons
        
        notificationLabel.text = "\(gelenKisiNesnesi.name!) - \(gelenTarih!) - \(gelenMesaj!)"
        dismiss(animated: true, completion: nil)
    }

}

