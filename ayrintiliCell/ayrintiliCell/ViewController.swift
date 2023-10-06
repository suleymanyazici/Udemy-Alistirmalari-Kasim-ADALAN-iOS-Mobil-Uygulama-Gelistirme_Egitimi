//
//  ViewController.swift
//  ayrintiliCell
//
//  Created by Suleyman YAZICI on 1.08.2023.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var kisiler = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.dataSource = self
        tableView.delegate = self

        let k1 = Kisiler(kisiAd: "Mahmut", kisiNo: 1923, kisiTel: 05555555555)
        let k2 = Kisiler(kisiAd: "Ahmet", kisiNo: 3823, kisiTel: 05553456666)
        let k3 = Kisiler(kisiAd: "Ela", kisiNo: 3423, kisiTel: 05555555575)
        let k4 = Kisiler(kisiAd: "İsmet", kisiNo: 1235, kisiTel: 05555555513)
        let k5 = Kisiler(kisiAd: "Zekeriya", kisiNo: 3241, kisiTel: 05555555575)
        let k6 = Kisiler(kisiAd: "Yahya", kisiNo: 6454, kisiTel: 05555555598)
        let k7 = Kisiler(kisiAd: "Zülkif", kisiNo: 1234, kisiTel: 05555555526)
        let k8 = Kisiler(kisiAd: "Memet", kisiNo: 6543, kisiTel: 05555555509)
        let k9 = Kisiler(kisiAd: "Sami", kisiNo: 1209, kisiTel: 05555555521)
        let k10 = Kisiler(kisiAd: "Sülo", kisiNo: 9823, kisiTel: 05555555587)

        kisiler.append(k1)
        kisiler.append(k2)
        kisiler.append(k3)
        kisiler.append(k4)
        kisiler.append(k5)
        kisiler.append(k6)
        kisiler.append(k7)
        kisiler.append(k8)
        kisiler.append(k9)
        kisiler.append(k10)
        
        
    }


}
extension ViewController : UITableViewDelegate, UITableViewDataSource, HucreButtonProtocol{
    func hucreIciButonaTiklandi(indexPath: IndexPath) {
        let tiklananKisi = kisiler[indexPath.row]
        print("Buotna tıklayan kisi : \(tiklananKisi.kisiAd!)")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisiler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TableViewCell
        let gelenKisi = kisiler[indexPath.row]
        cell.kisiAdLabel.text = gelenKisi.kisiAd
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selected = kisiler[indexPath.row]
        print("Ad : \(selected.kisiAd!) Tel : \(selected.kisiTel!) No : \(selected.kisiNo!)")
    }
}

    
