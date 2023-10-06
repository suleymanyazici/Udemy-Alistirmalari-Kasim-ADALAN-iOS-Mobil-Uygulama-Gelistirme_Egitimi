//
//  ViewController.swift
//  Surat Zarı
//
//  Created by Suleyman YAZICI on 17.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zar1: UIImageView!
    @IBOutlet weak var zar2: UIImageView!
    let items = [UIImage(named: "image"), UIImage(named: "image-2"), UIImage(named: "image-3"), UIImage(named: "image-4"), UIImage(named: "image-5"), UIImage(named: "image-6")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sıfatAt(_ sender: Any) {
        let first = Int(arc4random_uniform(6))
        let second = Int(arc4random_uniform(6))
        
        zar1.image = items[first]
        zar2.image = items[second]
    }
    
}

