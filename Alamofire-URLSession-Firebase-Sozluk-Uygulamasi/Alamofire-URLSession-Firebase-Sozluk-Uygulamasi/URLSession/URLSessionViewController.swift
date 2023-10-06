//
//  URLSessionViewController.swift
//  Alamofire-URLSession-Firebase-Sozluk-Uygulamasi
//
//  Created by Suleyman YAZICI on 21.09.2023.
//

import UIKit

class URLSessionViewController: UIViewController {

    var kelimeListesi = [Kelimeler]()
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        
        getAllWords()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let indeks = sender as! Int
        let gidilecekVC = segue.destination as! URLSessionDetailViewController
        gidilecekVC.kelime = kelimeListesi[indeks]
        
        
    }
    func getAllWords(){
        
            
            let url = URL(string: "http://kasimadalan.pe.hu/sozluk/tum_kelimeler.php")!
            
            URLSession.shared.dataTask(with: url) { data,response,error in
                if error != nil || data == nil {
                    print("Hata")
                    
                    return
                }
                
                do {
                    let cevap = try JSONDecoder().decode(SozlukCevap.self, from: data!)
                    if let gelenKelimelistesi = cevap.kelimeler {
                        
                        self.kelimeListesi = gelenKelimelistesi
                        print(gelenKelimelistesi)
                    }
                    
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                    
                    
                    
                }catch{
                    print(error.localizedDescription)
                }
                
            }.resume()
            
            
        
//        let url = URL(string: "http://kasimadalan.pe.hu/sozluk/tum_kelimeler.php")!
//        
//        URLSession.shared.dataTask(with: url){ data,response,error in
//            if error != nil || data == nil {
//                print("error")
//                return
//            }
//            do{
//                let cevap  = try JSONDecoder().decode(SozlukCevap.self, from: data! )
//                if let kelimeler = cevap.words{
//                    self.wordList = kelimeler
//                    print("deneme\(kelimeler)")
//                }
//                DispatchQueue.main.async{
//                    self.tableView.reloadData()
//                }
//            }catch{
//                print(error.localizedDescription)
//            }
//        }.resume()
    }
    func makeSearch(searchText : String){
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/sozluk/kelime_ara.php")!)
        
        request.httpMethod = "POST"
        let postWords = "ingilizce=\(searchText)"
        
        request.httpBody = postWords.data(using: .utf8)//türkçe karaktere laf etmesin diye
        
        URLSession.shared.dataTask(with: request){ data,response,error in
            if error != nil || data == nil {
                print("error")
                return
            }
            do{
                let response  = try JSONDecoder().decode(SozlukCevap.self, from: data! )
                if let words = response.kelimeler{
                    self.kelimeListesi = words
                }
                DispatchQueue.main.async{
                    self.tableView.reloadData()
                }
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
}


extension URLSessionViewController : UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kelimeListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let word = kelimeListesi[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "wordCell", for: indexPath) as! URLSessionTableViewCell
        
        cell.englishLabel.text = word.ingilizce
        cell.turkishLabel.text = word.turkce
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toURLSessionDetail", sender: indexPath.row)
    }
}

extension URLSessionViewController : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama Yapılıyormu :\(searchText)")
        makeSearch(searchText: searchText)
    }
}
