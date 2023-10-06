import UIKit

class Ogrenci {
    var ad : String?
}

var ogrenci = Ogrenci()
ogrenci.ad = "Mehmet"
print(ogrenci.ad!)

var ogrenci2 = ogrenci
ogrenci2.ad = "Ahmet"
print(ogrenci.ad!) // Class içinde ogrenci2 nin adını değiştirmemize rağmen ogrenci değeride değişti çünkü referans tiplidir tee gider en baştaki değere kadar sonra geri gelir değişe değişe

struct Kopek{
    var renk : String?
}

var kopek = Kopek()
kopek.renk = "Kırmızı"
print(kopek.renk!)

var kopek2 = kopek
kopek2.renk = "Beyaz"
print(kopek.renk!) //burada değişmemesinin sebebide struct değer tipi özelliğe sahiptir bu şekilde kimin değeriyle oynarsan onun değeri değişir 
