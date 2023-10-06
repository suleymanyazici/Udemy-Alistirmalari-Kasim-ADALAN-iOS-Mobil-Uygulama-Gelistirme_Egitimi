import UIKit

func kisiTanima(ad: String){
    guard ad == "Ahmet" else{
        print("Bu kim")
        return
    }
    print("Naptın Ahmet")
}

kisiTanima(ad: "Ahmet")


// Birazda optional çalışalım ve aynı zamanda birden fazla şart koyalım
func buyukHarfYap(str:String?){
    guard let temp = str, temp.count > 0 else{
        print("Nil geldi gardaş")
        return
    }
    print("\(temp.uppercased())")
}

buyukHarfYap(str: "Naptın Ahmet")
