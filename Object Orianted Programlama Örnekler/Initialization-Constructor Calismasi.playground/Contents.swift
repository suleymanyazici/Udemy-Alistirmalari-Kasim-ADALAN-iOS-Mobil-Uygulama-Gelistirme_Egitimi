import UIKit

class Kisiler{
    var ad : String?
    var yas : Int?
    
    init(){
        // İçinde bulunduğumuz init yapısını biz yazmasakta Swift bizim için bunu yapıyor ve hiç kullanmadan aşağıda bulunan kisi1 nesnesini tanımlarken kullanıyoruz.
    }
    
    init(ad:String, yas:Int) {
        self.ad = ad
        self.yas = yas// burada global ve local değişkenler aynı olduğu için self kullanmak zorundayız self kullanarak local değişkenle global değişkeni eşitliyoruz(gölgeliyoruz) ve kullanım kolaylığı sağlamış oluyoruz.( Aşağıdaki inittede self kullanmamıza gerek olmayan bir yapı yı örneği var kullanılmıyo pek ama bilmekte fayda var)
    }
    
    init(ad1:String, yas1:Int) {
        ad = ad1
        yas = yas1 // Burada gölgeleme olmaksızın yapılmış bir init yapısı bulunmakta
    }
}

var kisi1 = Kisiler()
kisi1.ad = "Mehmet"
kisi1.yas = 18

print(kisi1.ad!)
print(kisi1.yas!)

var kisi2 = Kisiler(ad: "Ahmet", yas: 19)

print(kisi2.ad!)
print(kisi2.yas!)

var kisi3 = Kisiler(ad1: "İsmet", yas1: 20)

print(kisi3.ad!)
print(kisi3.yas!)
