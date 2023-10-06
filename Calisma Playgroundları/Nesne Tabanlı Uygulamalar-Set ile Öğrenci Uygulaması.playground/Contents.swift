import UIKit

class Ogrenci: Equatable, Hashable{
    var ad: String?
    var no: Int?
    var sinif: String?
    
    init(ad: String, no:Int, sinif: String) {
        self.ad = ad
        self.no = no
        self.sinif = sinif
    }
    //bu arkadaştanda bir bok anlamadım
    var hashValue: Int{
        get{
            return no.hashValue
        }
    }
    //bu arkadaştan bir bok anlamadım ama azamanla anlarız sıkıntı yok
    static func == (lhs: Ogrenci, rhs: Ogrenci) -> Bool {
        return lhs.no == rhs.no
    }

}


var o1 = Ogrenci(ad: "Ahemt", no: 110, sinif: "10A")
var o2 = Ogrenci(ad: "Mehmet", no: 120, sinif: "11E")
var o3 = Ogrenci(ad: "Zeynep", no: 130, sinif: "9B")
var o4 = Ogrenci(ad: "Ali", no: 130, sinif: "12D")

var ogrenciListesi = Set <Ogrenci>()

ogrenciListesi.insert(o1)
ogrenciListesi.insert(o2)
ogrenciListesi.insert(o3)
ogrenciListesi.insert(o4)


for ogrenci in ogrenciListesi{
    print("*****************")
    print("Öğrenci Ad    : \(ogrenci.ad!)")
    print("Öğrenci No    : \(ogrenci.no!)")
    print("Örenci Sınıf  : \(ogrenci.sinif!)")
}
