//
//  Words.swift
//  Alamofire-URLSession-Firebase-Sozluk-Uygulamasi
//
//  Created by Suleyman YAZICI on 21.09.2023.
//

import Foundation

class Kelimeler:Codable {
    var kelime_id:String?
    var ingilizce:String?
    var turkce:String?
    
    
    init(kelime_id:String,ingilizce:String,turkce:String) {
        self.kelime_id = kelime_id
        self.ingilizce = ingilizce
        self.turkce = turkce
    }
    init() {
    }
}

