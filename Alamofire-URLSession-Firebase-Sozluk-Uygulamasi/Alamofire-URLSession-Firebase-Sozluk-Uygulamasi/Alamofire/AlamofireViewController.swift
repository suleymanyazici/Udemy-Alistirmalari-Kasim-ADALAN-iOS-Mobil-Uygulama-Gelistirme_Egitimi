//
//  AlamofireViewController.swift
//  Alamofire-URLSession-Firebase-Sozluk-Uygulamasi
//
//  Created by Suleyman YAZICI on 22.09.2023.
//

import UIKit
import Alamofire


class AlamofireViewController: UIViewController {
    var kelimeListesi = [Kelimeler]()
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        searchBar.delegate = self
        
        getAllWords()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let indeks = sender as! Int
        let gidilecekVC = segue.destination as! AlamofireDetailViewController
        gidilecekVC.kelime = kelimeListesi[indeks]
        
        
    }
    func getAllWords(){
        
        AF.request("http://kasimadalan.pe.hu/sozluk/tum_kelimeler.php",method: .get).response {
            response in
            if let data  = response.data {
                do{
                    let response = try JSONDecoder().decode(SozlukCevap.self, from: data)
                    
                    if let gelenKelimeListesi = response.kelimeler {
                        self.kelimeListesi = gelenKelimeListesi
                    }
                    
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                    
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
            
        }
        
    func makeSearch(searchText:String){
        let parameters : Parameters = ["ingilizce" : searchText ]
        AF.request("http://kasimadalan.pe.hu/sozluk/kelime_ara.php",method: .post,parameters: parameters).response {
            response in
            if let data  = response.data {
                do{
                    let response = try JSONDecoder().decode(SozlukCevap.self, from: data)
                    
                    if let gelenKelimeListesi = response.kelimeler {
                        self.kelimeListesi = gelenKelimeListesi
                    }
                    
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                    
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
            
        
    }
    }


extension AlamofireViewController : UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kelimeListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let kelime = kelimeListesi[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "word2Cell", for: indexPath) as! AlamofireTableViewCell
        
        cell.englishLabel.text = kelime.ingilizce
        cell.turkishLabel.text = kelime.turkce
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toAlamofireDetail", sender: indexPath.row)
    }
}

extension AlamofireViewController : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama Yapılıyormu :\(searchText)")
        makeSearch(searchText: searchText)
    }
}

