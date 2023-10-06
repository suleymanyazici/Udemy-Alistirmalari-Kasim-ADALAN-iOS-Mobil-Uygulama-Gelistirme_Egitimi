//
//  ViewController.swift
//  cokBolumluTableView
//
//  Created by Suleyman YAZICI on 31.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var basliklar = ["Meyveler", "Renkler", "Mevsimler"]
    var veriler = [["Muz", "Kiraz", "Portakal", "Elma", "Mandalina"],["Kırmızı", "Mavi", "Mor", "Erguan", "Çiyan"],["Yaz", "Kış", "Sonbahar", "İlkbahar"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return basliklar.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return veriler[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return basliklar[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newCell", for: indexPath)
        if #available(iOS 14.0, *){
            var content = cell.defaultContentConfiguration()
            content.text = veriler[indexPath.section][indexPath.row]
            cell.contentConfiguration = content
        }else{
            cell.textLabel?.text = veriler[indexPath.section][indexPath.row]
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(basliklar[indexPath.section])---> \(veriler[indexPath.section][indexPath.row])")
    }
    
}
