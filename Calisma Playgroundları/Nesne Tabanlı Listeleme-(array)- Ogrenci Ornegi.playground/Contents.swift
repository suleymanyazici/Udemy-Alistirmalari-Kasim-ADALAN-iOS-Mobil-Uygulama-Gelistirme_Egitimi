class Ogrenci {
    var ad : String?
    var no : Int?
    var sinif : String?
    
    init(ad:String, no:Int, sinif:String?) {
        self.ad = ad
        self.no = no
        self.sinif = sinif
    }
}
var o1 = Ogrenci(ad: "Ahmet", no: 53, sinif: "11-B")
var o2 = Ogrenci(ad: "Mehmet", no: 54, sinif: "12-c")
var o3 = Ogrenci(ad: "Sultan", no: 55, sinif: "9-B")
var o4 = Ogrenci(ad: "Süleyman", no: 56, sinif: "12-B")
var o5 = Ogrenci(ad: "İsmet", no: 57, sinif: "11-A")
var o6 = Ogrenci(ad: "Dilara", no: 58, sinif: "10-B")
var o7 = Ogrenci(ad: "Ahmet", no: 59, sinif: "10-A")
var o8 = Ogrenci(ad: "Kemal", no: 59, sinif: "12-C")

var ogrenciListesi = [Ogrenci]()

ogrenciListesi.append(o1)
ogrenciListesi.append(o2)
ogrenciListesi.append(o3)
ogrenciListesi.append(o4)
ogrenciListesi.append(o5)
ogrenciListesi.append(o6)
ogrenciListesi.append(o7)
ogrenciListesi.append(o8)
var index = 1
for ogrenci in ogrenciListesi{
    
    print("\(index) - \(ogrenci.ad!)   \(ogrenci.no!)   \(ogrenci.sinif!)")
    index = index + 1
}

