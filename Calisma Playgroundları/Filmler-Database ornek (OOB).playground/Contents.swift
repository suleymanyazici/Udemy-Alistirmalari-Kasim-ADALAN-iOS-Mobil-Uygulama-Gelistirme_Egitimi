import UIKit


class Kategoriler{
    var kategori_id : Int?
    var kategori_ad : String?
    
    init(kategori_ad : String,kategori_id : Int){
        self.kategori_ad = kategori_ad
        self.kategori_id = kategori_id
    }
}

class Yonetmenler{
    var yonetmen_id : Int?
    var yonetmen_ad : String?
    
    init(yonetmen_ad : String, yonetmen_id : Int){
        self.yonetmen_ad = yonetmen_ad
        self.yonetmen_id = yonetmen_id
    }
}

class Filmler{
    var film_id : Int?
    var film_ad : String?
    var film_yil: Int?
    var kategori_id : Kategoriler?
    var yonetmen_id : Yonetmenler?
    
    init(film_id : Int, film_ad : String, film_yil: Int, kategori_id : Kategoriler, yonetmen_id : Yonetmenler){
        self.film_ad = film_ad
        self.film_id = film_id
        self.film_yil = film_yil
        self.kategori_id = kategori_id
        self.yonetmen_id = yonetmen_id
    }
    func yazdır(){
        print("\(film_ad!) \(film_yil!) yılında \(yonetmen_id!.yonetmen_ad!) tarafından yapılmıştır")
        print("Database bilgileri \(yonetmen_id!.yonetmen_id!) - \(yonetmen_id!.yonetmen_ad!) \nKategori Bilgileri \(kategori_id!.kategori_id!) - \(kategori_id!.kategori_ad!)")
        print("---------------------------------------------------------------------------------------------------")
    }
}
var dram = Kategoriler(kategori_ad: "Dram", kategori_id: 1)
var komedi = Kategoriler(kategori_ad: "Komedi", kategori_id: 2)
var bilimKurgu = Kategoriler(kategori_ad: "Bilim Kurgu", kategori_id: 3)

var nuri = Yonetmenler(yonetmen_ad: "Nuri Bilge Ceylan", yonetmen_id: 1)
var quentin = Yonetmenler(yonetmen_ad: "Quentin Tarantino", yonetmen_id: 2)
var nolan = Yonetmenler(yonetmen_ad: "Christoper Nolan", yonetmen_id: 3)


var django = Filmler(film_id: 1, film_ad: "Django", film_yil: 2012, kategori_id: dram, yonetmen_id: quentin)
var ınception = Filmler(film_id: 2, film_ad: "Inception", film_yil: 2006, kategori_id: bilimKurgu, yonetmen_id: nolan)

django.yazdır()
ınception.yazdır()
