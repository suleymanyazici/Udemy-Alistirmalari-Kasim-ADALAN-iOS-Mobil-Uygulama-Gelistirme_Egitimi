//
//  ViewController.swift
//  CiftTableView
//
//  Created by Suleyman YAZICI on 30.07.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ulkeTableView: UITableView!
    @IBOutlet weak var sehirTableView: UITableView!
    var ulkeler  = [String]()
    var sehirler = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeTableView.dataSource = self
        ulkeTableView.delegate = self
        sehirTableView.dataSource = self
        sehirTableView.delegate = self
        
        ulkeler = ["Türkiye", "Polonya", "Hollanda", "Amerika", "Japonya", "Çin", "Yeni Zelanda", "Afrika", "Almanya", "Yunanistan", "Bulgaristan", "Arnavutluk"]
        sehirler = ["İstanbul", "Rize", "Kastamonu", "Van", "Batman", "Adıyaman", "Siirt", "Komartoz", "Şimatoz", "Lestengoz", "Mandiles"]
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var veriSayisi = 0
        if tableView == ulkeTableView{
           veriSayisi = ulkeler.count
        }
        if tableView == sehirTableView{
            veriSayisi = sehirler.count
        }
        return veriSayisi
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var hucreAdi : String?
        var diziAdi = [String]()
        if tableView == ulkeTableView{
            hucreAdi = "ulkeCell"
            diziAdi = self.ulkeler
        }
        if tableView == sehirTableView{
            hucreAdi = "sehirCell"
            diziAdi = self.sehirler
        }
            let cell = tableView.dequeueReusableCell(withIdentifier: hucreAdi!, for: indexPath)
            if #available(iOS 14.0, *){
                var content = cell.defaultContentConfiguration()
                content.text = diziAdi[indexPath.row]
                cell.contentConfiguration = content
            }else{
                cell.textLabel?.text = ulkeler[indexPath.row]
            }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var diziAdi = [String]()
        if tableView == ulkeTableView{
            diziAdi = self.ulkeler
            print("Seçilen ülke : \(diziAdi[indexPath.row])")
        }
        if tableView == sehirTableView{
            diziAdi = self.sehirler
            print("Seçilen şehir : \(diziAdi[indexPath.row])")
        }
    }
}

