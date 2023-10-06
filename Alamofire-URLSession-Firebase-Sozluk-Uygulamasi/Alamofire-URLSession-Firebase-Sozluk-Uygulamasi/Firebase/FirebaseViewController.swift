//
//  FirebaseViewController.swift
//  Alamofire-URLSession-Firebase-Sozluk-Uygulamasi
//
//  Created by Suleyman YAZICI on 22.09.2023.
//

import UIKit
import Firebase

class FirebaseViewController: UIViewController {

    var ref : DatabaseReference!
    var kelimeListesi = [Kelimeler]()
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        ref = Database.database().reference()
        
       getAllWords()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var indeks = sender as! Int
        let gidilecekVC = segue.destination as! FirebaseDetailViewController
        gidilecekVC.kelime = kelimeListesi[indeks]
        
    }
    
    func getAllWords(){
        self.ref.child("kelimeler").observe(.value, with: { snapshot in
            
            if let gelenVeri = snapshot.value as? [String:AnyObject]{
                self.kelimeListesi.removeAll()
                
                for gelenSatir in gelenVeri{
                    if let dict = gelenSatir.value as? NSDictionary{
                        let key = gelenSatir.key
                        let turkce = dict["turkce"] as? String ?? ""
                        let ingilizce = dict["ingilizce"] as? String ?? ""
                        
                        let word = Kelimeler(kelime_id: key, ingilizce: ingilizce, turkce: turkce)
                        
                        self.kelimeListesi.append(word)
                    }
                }
                DispatchQueue.main.async{
                    self.tableView.reloadData()
                }
            }
            
        })
    }

    func makeSearch(searchText:String){
        self.ref.child("kelimeler").observe(.value, with: { snapshot in
            
            if let gelenVeri = snapshot.value as? [String:AnyObject]{
                self.kelimeListesi.removeAll()
                
                for gelenSatir in gelenVeri{
                    if let dict = gelenSatir.value as? NSDictionary{
                        let key = gelenSatir.key
                        let turkce = dict["turkce"] as? String ?? ""
                        let ingilizce = dict["ingilizce"] as? String ?? ""
                        
                        if ingilizce.contains(searchText){
                            let word = Kelimeler(kelime_id: key, ingilizce: ingilizce, turkce: turkce)
                            
                            self.kelimeListesi.append(word)
                        }
                    }
                }
                DispatchQueue.main.async{
                    self.tableView.reloadData()
                }
            }
            
        })
    }

}
extension FirebaseViewController : UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kelimeListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let kelime = kelimeListesi[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "word3Cell", for: indexPath) as! FirebaseTableViewCell
        
        cell.englishLabel.text = kelime.ingilizce
        cell.turkishLabel.text = kelime.turkce
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toFirebaseDetail", sender: indexPath.row)
    }
}

extension FirebaseViewController : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText == "" {
            getAllWords()
        }else{
            print("Arama Yapılıyormu :\(searchText)")
            makeSearch(searchText: searchText)
        }
    }
}
