//
//  ViewController.swift
//  CollectionView
//
//  Created by Suleyman YAZICI on 6.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var ulkeler = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //CollecitonView genişliği
        let genislik = self.collectionView.frame.size.width
        //Tasarım Tanımlanır
        let tasarim = UICollectionViewFlowLayout()
        //Hücrelerin ekran kenarındaki boşluk miktarı
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        //Yatayda hücrelerin arasındaki boşluk
        tasarim.minimumLineSpacing = 5
        //Dikeyde hücrelerin arasındaki minimum boşluk
        tasarim.minimumLineSpacing = 5
        //
        tasarim.itemSize = CGSize(width: (genislik - 30)/4, height: (genislik - 30)/4)
        
        collectionView.collectionViewLayout = tasarim
        
        ulkeler = ["Türkiye", "Almanya", "Venezuela", "Asmaluk", "Komartoz", "Şimartoz", "Dereboyu"]
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ulkeler.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ulkeHucre", for: indexPath) as! CollectionViewCell
        cell.ulkeLabel.text = ulkeler[indexPath.item]
        //Hücre çevresine sınır çizer
        cell.layer.borderColor = UIColor.blue.cgColor
        //Sınır kalınlığınıda bu belirler
        cell.layer.borderWidth = 2
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Tıklanan Ülke : \(ulkeler[indexPath.item])")
    }
    
}
