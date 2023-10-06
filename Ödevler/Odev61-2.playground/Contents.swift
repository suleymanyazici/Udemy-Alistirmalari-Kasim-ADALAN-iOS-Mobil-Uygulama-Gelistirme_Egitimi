import UIKit

class Rectangle{
    func cevre(kisaUzunluk:Double, uzunUzunluk : Double) -> Double{
        var sonuc = kisaUzunluk * 2 + uzunUzunluk * 2
        return sonuc
    }
}

var dortgen = Rectangle()
print(dortgen.cevre(kisaUzunluk: 15, uzunUzunluk: 20))
	
	
