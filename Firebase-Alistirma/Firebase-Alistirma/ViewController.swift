//
//  ViewController.swift
//  Firebase-Alistirma
//
//  Created by Suleyman YAZICI on 21.09.2023.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    var ref : DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()

        //veriKayıt()
        //veriSil()
        //veriGuncelleme()
        //veriAl()
        //kisiArama()
        //sinirliKisiGetirme()
        bastanIlk()
        sondanIlk()
    }
    
    func veriKayıt(){
        
        let newPerson = Persons(person_name: "Husika", person_age: 1231)
        let dict : [String : Any] = ["person_name" : newPerson.person_name!, "person_age" : newPerson.person_age!]
        let newRef = self.ref.child("Persons").childByAutoId()
        newRef.setValue(dict)
        
        let key = newRef.key
        print(key!)
    }
    
    func veriSil(){
       
        self.ref.child("Persons").child("-Nes5AAb8vH-60N7Zajt").removeValue()
    
    }

    func veriGuncelleme(){
        self.ref.child("Persons").child("-Nes5cXKBung_oUOShCV").updateChildValues(["person_name" : "Husikiyexxxx", "person_age": 999])
    }
    
    func veriAl(){
        
        self.ref.child("Persons").observe(.value, with: {snapshot in
            if let responseValue = snapshot.value as? [String:AnyObject] {
                
                for responseLine in responseValue{
                    if let dict = responseLine.value as? NSDictionary{
                        let key = responseLine.key
                        let person_name = dict["person_name"] as? String ?? "" //?? "" varsayılan değer demektir
                        let person_age = dict["person_age"] as? Int ?? 0 // burada ?? ise 0 demektir
                        print("Key      : \(key)")
                        print("Kisi Ad  : \(person_name)")
                        print("Kisi Yas : \(person_age)")
                        print("--------------------------")
                    }
                }
                print("*****************************")
                print(responseValue)
            }
        })
    }
    func kisiArama(){
        
        let arama = self.ref.child("Persons").queryOrdered(byChild: "person_name").queryEqual(toValue: "Ahmet")
        
        arama.observe(.value, with: {snapshot in
            
            if let responseValue = snapshot.value as? [String:AnyObject] {
                
                for responseLine in responseValue{
                    if let dict = responseLine.value as? NSDictionary{
                        let key = responseLine.key
                        let person_name = dict["person_name"] as? String ?? "" //?? "" varsayılan değer demektir
                        let person_age = dict["person_age"] as? Int ?? 0 // burada ?? ise 0 demektir
                        print("Key      : \(key)")
                        print("Kisi Ad  : \(person_name)")
                        print("Kisi Yas : \(person_age)")
                        print("--------------------------")
                    }
                }
            }
        })
    }
    func sinirliKisiGetirme(){
        
        let sinirliArama = self.ref.child("Persons").queryOrdered(byChild: "person_age").queryStarting(atValue: 15).queryEnding(atValue: 30)
        
        sinirliArama.observe(.value, with: {snapshot in
           
            if let responseValue = snapshot.value as? [String:AnyObject] {
                
                for responseLine in responseValue{
                    if let dict = responseLine.value as? NSDictionary{
                        let key = responseLine.key
                        let person_name = dict["person_name"] as? String ?? "" //?? "" varsayılan değer demektir
                        let person_age = dict["person_age"] as? Int ?? 0 // burada ?? ise 0 demektir
                        print("Key      : \(key)")
                        print("Kisi Ad  : \(person_name)")
                        print("Kisi Yas : \(person_age)")
                        print("--------------------------")
                    }
                }
            }
        })
    }
    func bastanIlk(){
        
        let bastanIlkArama = self.ref.child("Persons").queryLimited(toFirst: 1)
        
        bastanIlkArama.observe(.value, with: {snapshot in
           
            if let responseValue = snapshot.value as? [String:AnyObject] {
                
                for responseLine in responseValue{
                    if let dict = responseLine.value as? NSDictionary{
                        let key = responseLine.key
                        let person_name = dict["person_name"] as? String ?? "" //?? "" varsayılan değer demektir
                        let person_age = dict["person_age"] as? Int ?? 0 // burada ?? ise 0 demektir
                        print("basKey      : \(key)")
                        print("basKisi Ad  : \(person_name)")
                        print("basKisi Yas : \(person_age)")
                        print("--------------------------")
                    }
                }
            }
        })
    }
    
    func sondanIlk(){
        
        let sondanIlk = self.ref.child("Persons").queryLimited(toLast: 1)
        
        sondanIlk.observe(.value, with: {snapshot in
           
            if let responseValue = snapshot.value as? [String:AnyObject] {
                
                for responseLine in responseValue{
                    if let dict = responseLine.value as? NSDictionary{
                        let key = responseLine.key
                        let person_name = dict["person_name"] as? String ?? "" //?? "" varsayılan değer demektir
                        let person_age = dict["person_age"] as? Int ?? 0 // burada ?? ise 0 demektir
                        print("sonKey      : \(key)")
                        print("sonKisi Ad  : \(person_name)")
                        print("sonKisi Yas : \(person_age)")
                        print("--------------------------")
                    }
                }
            }
        })
    }
    
}

