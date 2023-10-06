import UIKit

class Ogrenci {
    var ad: String?
    var no: Int?
    var sinif: String
    
    init(ad: String, no: Int, sinif: String) {
        self.ad = ad
        self.no = no
        self.sinif = sinif
    }
}

var o1 = Ogrenci(ad: "Ahmet", no: 110, sinif: "11B")
var o2 = Ogrenci(ad: "Mehmet", no: 120, sinif: "12C")
var o3 = Ogrenci(ad: "Zeynep", no: 130, sinif: "8B")
var o4 = Ogrenci(ad: "İshak", no: 140, sinif: "9A")

var ogrenciDic = [Int:Ogrenci]()
ogrenciDic[o1.no!] = o1
ogrenciDic[o2.no!] = o2
ogrenciDic[o3.no!] = o3
ogrenciDic[o4.no!] = o4

for (ogrenciNo, nesne) in ogrenciDic{
    print("*****************")
    print("Öğrenci Ad    : \(nesne.ad!)")
    print("Öğrenci No    : \(ogrenciNo)")
    print("Öğrenci Sinif : \(nesne.sinif)")
}
