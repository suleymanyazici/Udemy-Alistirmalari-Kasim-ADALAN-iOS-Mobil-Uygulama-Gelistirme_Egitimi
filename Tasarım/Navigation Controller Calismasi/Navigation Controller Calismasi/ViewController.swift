//
//  ViewController.swift
//  Navigation Controller Calismasi
//
//  Created by Suleyman YAZICI on 11.06.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Yeni Başlık"
        //self.navigationItem.prompt = "Yeni Açıklama"
        
        //self.navigationItem.largeTitleDisplayMode = .always
        // .never   yada .automatic şeklinde de yapabiliriz seçimlere göre
        
        //let resim = UIImage(named: "icon")
        //self.navigationItem.titleView = UIImageView(image: resim)
        
// Navigation Kontrolü kodlar ile özelleştirme
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .red
        appearance.titleTextAttributes = [.foregroundColor : UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor : UIColor.white]
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isTranslucent = true
        
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    @IBAction func Ekle(_ sender: Any) {
        print("Ekle")
    }
    
    @IBAction func Dosya(_ sender: Any) {
        print("Dosya")
    }
    @IBAction func Action(_ sender: Any) {
        print("Aksiyon")
    }
    @IBAction func Edit(_ sender: Any) {
        print("Edit")
    }
  

}

