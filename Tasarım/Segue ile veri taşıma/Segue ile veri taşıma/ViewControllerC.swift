//
//  ViewControllerC.swift
//  Segue ile veri taşıma
//
//  Created by Suleyman YAZICI on 9.06.2023.
//

import UIKit

class ViewControllerC: UIViewController {
    @IBOutlet weak var labelC: UILabel!
    var mesajC : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        labelC.text = mesajC
    }
    

    
}
