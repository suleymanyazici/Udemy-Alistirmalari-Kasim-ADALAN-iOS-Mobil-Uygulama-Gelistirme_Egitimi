//
//  FirebaseDetailViewController.swift
//  Alamofire-URLSession-Firebase-Sozluk-Uygulamasi
//
//  Created by Suleyman YAZICI on 22.09.2023.
//

import UIKit

class FirebaseDetailViewController: UIViewController {

    @IBOutlet weak var turkishDetaiLabel: UILabel!
    @IBOutlet weak var englishDetailLabel: UILabel!
    var kelime:Kelimeler?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let x = kelime{
    
            turkishDetaiLabel.text = x.turkce
            englishDetailLabel.text = x.ingilizce
        }
    }

}
