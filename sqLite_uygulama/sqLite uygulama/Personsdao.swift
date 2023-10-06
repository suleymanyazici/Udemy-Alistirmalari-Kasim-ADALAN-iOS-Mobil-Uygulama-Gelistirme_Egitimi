//
//  Personsdao.swift
//  sqLite uygulama
//
//  Created by Suleyman YAZICI on 5.09.2023.
//

import Foundation

class Personsdao{
    
    let db : FMDatabase?
    
    init() {
        //Kopyalanan veritabanını kopyalandığı yerden alıp hazır hale getirmek için.
        let targetWay = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let dbURL = URL(fileURLWithPath: targetWay).appendingPathComponent("persons.sqlite")
      
        db = FMDatabase(path: dbURL.path)//Veri tabanı bağlantısını yapan nesne
    }
    // MARK: Veritabanından Kişileri Alma
    func getAllPersons() -> [Persons] {
        
        var list = [Persons]()
        
        db?.open()// Bu db de her zaman db bağlantısını açıp işlem sonunda kapatmamız gerekiyor
        
        do {
            let rs = try db!.executeQuery("SELECT * FROM persons", values: nil)
            
            while rs.next(){
                let person = Persons(person_id: Int(rs.string(forColumn: "person_id")!)!,
                                     person_name: rs.string(forColumn: "person_name")!,
                                     person_age: Int(rs.string(forColumn: "person_age")!)!)
                list.append(person)
            }
            
        } catch  {
            print(error.localizedDescription)
        }
        db?.close()
        
        return list
    }
    // MARK: Kişi ekleme
    func addPerson(person_name : String, person_age :Int) {
        db?.open()
        
        do {
            try db!.executeUpdate("INSERT INTO persons (person_name, person_age) VALUES (?,?)", values: [person_name, person_age])
            // buradaki soru işaretleri ni kullanırsak values de değer yazarken o soru işaretleri sırasına bağlı kalarak işlem yaparız
        } catch  {
            print(error.localizedDescription)
        }
        db?.close()
    }
    // MARK: Kişi Güncelleme
    func updatePerson(person_id : Int, person_name : String, person_age : Int) {
        db?.open()
        
        do {
            try db!.executeUpdate("UPDATE persons SET person_name = ?, person_age = ? WHERE person_id = ? ", values: [person_name, person_age, person_id])
        } catch  {
            print(error.localizedDescription)
        }
        db?.close()
    }
    // MARK: Kişi Sİlme
    
    func deletePerson(person_id : Int) {
        db?.open()
        
        do{
            try db!.executeUpdate("DELETE FROM persons WHERE person_id = ?", values: [person_id])
            
        } catch {
            print(error.localizedDescription)
        }
        db!.close()
    }
    
    // MARK: Kayıt Kontrol Etme İşlemi
//    func checkPerson(person_name : String) -> Int {
//        var result = 0
//
//        db?.open()
//        do {
//            let rs = try db!.executeQuery("SELECT * FROM persons WHERE person_name = ?", values: [person_name])
//            
//            while rs.next(){
//                result = Int(rs.string(forColumn: "result")!)!
//            }
//            
//        } catch  {
//            print(error.localizedDescription)
//        }
//        db?.close()
//        return result
//    }
    
    
}
