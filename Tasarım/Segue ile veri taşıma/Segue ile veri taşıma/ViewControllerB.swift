//
//  ViewControllerB.swift
//  Segue ile veri taşıma
//
//  Created by Suleyman YAZICI on 9.06.2023.
//

import UIKit

class ViewControllerB: UIViewController {

    @IBOutlet weak var label: UILabel!
    var mesajB : String?
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = mesajB
        
    }
    

    

}
