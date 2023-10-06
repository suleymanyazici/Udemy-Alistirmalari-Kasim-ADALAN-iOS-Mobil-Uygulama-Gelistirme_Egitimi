//
//  ViewController.swift
//  Alamofire_Alistirma
//
//  Created by Suleyman YAZICI on 21.09.2023.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    func addPerson(){
        let parameters : Parameters = ["kisi_ad" : "deneme1","kisi_tel" : "123456789"]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/insert_kisiler.php", method: .post, parameters: parameters).response{
            response in
            
            if let data = response.data{
                
                do {
                    
                    if let json = try JSONSerialization.jsonObject(with: data,options: []) as? [String : Any]{
                        print(json)
                    }
                }catch{
                    print(error.localizedDescription)
                }
                
            }
        }
    }
    
    func getAllPerson(){
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler.php", method: .get).response{
            response in
            
            if let data = response.data{
                do{
                    let response = try JSONDecoder().decode(KisiResponse.self, from: data)
                        
                        if let kisiList = response.kisiler{
                            
                            for kisi in kisiList{
                                print("Kisi id  : \(kisi.kisi_id)")
                                print("Kisi ad  : \(kisi.kisi_ad)")
                                print("Kisi tel : \(kisi.kisi_tel)")
                                print("-------------------------")
                            }
                        }
                    }catch{
                        print(error.localizedDescription)
                    }
                
            }
            
        }
    }
    
    func searching(){
        let parameters : Parameters = ["kisi_ad" : "deneme"]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php", method: .post, parameters: parameters).response{
            response in
            
            if let data = response.data{
                do{
                    let response = try JSONDecoder().decode(KisiResponse.self, from: data)
                    
                    if let kisiList = response.kisiler{
                        for kisi in kisiList{
                            print("Kisi id  : \(kisi.kisi_id)")
                            print("Kisi ad  : \(kisi.kisi_ad)")
                            print("Kisi tel : \(kisi.kisi_tel)")
                            print("-------------------------")
                        }
                    }
                    
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func deletePerson(){
        let parameters : Parameters = ["kisi_id" : 13538]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/delete_kisiler.php", method: .post, parameters:  parameters).response{
            response in
            
            if let data = response.data{
                do{
                     
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String : Any]{
                        print(json)
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
            
        }
    }

}

