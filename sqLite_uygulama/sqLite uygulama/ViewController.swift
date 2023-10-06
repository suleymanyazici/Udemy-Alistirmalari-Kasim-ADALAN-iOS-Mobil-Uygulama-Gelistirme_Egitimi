//
//  ViewController.swift
//  sqLite uygulama
//
//  Created by Suleyman YAZICI on 5.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     coppyDatabase()
        
        //Personsdao().addPerson(person_name: "İsmet", person_age: 43)
        
        //Personsdao().updatePerson(person_id: 1, person_name: "Mehmet", person_age: 63)
        
        //Personsdao().deletePerson(person_id: 2)
        
        let result = Personsdao().checkPerson(person_name: "İsmet")
        print("Gelen Kisi : \(result)")
        
        let comingList = Personsdao().getAllPersons()
        
        for p in comingList{
            print("\(p.person_id!) - Kişi Adı: \(p.person_name!) - Yaş: \(p.person_age!)")
        }
        
    }


}
extension ViewController{
    func coppyDatabase(){
        let bundleWay = Bundle.main.path(forResource: "persons", ofType: ".sqlite")
        let targetWay = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let fileManager = FileManager.default //Kopyalama işlemi için gerekli
        let copyPlace = URL(fileURLWithPath: targetWay ).appendingPathComponent("persons.sqlite")//Kopyalama yapılacak yer
        
        if fileManager.fileExists(atPath: copyPlace.path){
            print("The Database found")
        }else{
            do {
                try fileManager.copyItem(atPath: bundleWay!, toPath: copyPlace.path)
            } catch  {
                print(error)
            }
        }
        
    }
}
