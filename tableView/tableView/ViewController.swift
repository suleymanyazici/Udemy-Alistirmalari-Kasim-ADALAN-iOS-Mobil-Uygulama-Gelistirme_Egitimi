//
//  ViewController.swift
//  tableView
//
//  Created by Suleyman YAZICI on 29.07.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var ulkeler : [String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        ulkeler = ["Türkiye", "İngiltere", "Amerika", "Avusturalya", "Danimarka", "Yunanistan", "Azerbeycan", "Japonya", "Kore", "Çin"]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ulkeler.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucreAdi", for: indexPath)
        if #available(iOS 14.0, *){
            var content = cell.defaultContentConfiguration()
            content.text = ulkeler[indexPath.row]
            cell.contentConfiguration = content
        }else{
            cell.textLabel?.text = ulkeler[indexPath.row]
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seçilen Ülke : \(ulkeler[indexPath.row])")
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let silAction =  UIContextualAction(style: .destructive, title: "Sil"){
            (contextualAction, view, boolValue) in
            let alertController = UIAlertController(title: "Uyarı", message: "Silmek istediğinizden emin misiniz?", preferredStyle: .actionSheet)
            let devamButton = UIAlertAction(title: "Devam", style: .destructive) {_ in
                self.ulkeler.remove(at: indexPath.row)
                tableView.reloadData()
            }
            let iptalButton = UIAlertAction(title: "iptal", style: .cancel)
            
            alertController.addAction(devamButton)
            alertController.addAction(iptalButton)
            self.present(alertController, animated: true)
            
        }
        let duzenleAction = UIContextualAction(style: .normal, title: "Düzenle"){
            (contextualAction, view, boolValue) in
            let alertController = UIAlertController(title: "Dikkat", message: "Düzenleme yapmak istediğinize emin misiniz?", preferredStyle: .alert)
            alertController.addTextField {textField in
                textField.placeholder = "Ülke ismi giriniz"
            }
            let alinanDeger = (alertController.textFields![0] as UITextField).text!
            let degistirButton = UIAlertAction(title: "Değiştir", style: .default){_ in
                self.ulkeler[indexPath.row] = alinanDeger
                tableView.reloadData()
            }
            let iptalButton = UIAlertAction(title: "Vazgeç", style: .cancel)
            
            alertController.addAction(degistirButton)
            alertController.addAction(iptalButton)
            self.present(alertController, animated: true)
        }
        return UISwipeActionsConfiguration(actions: [silAction, duzenleAction])
    }
    
}
