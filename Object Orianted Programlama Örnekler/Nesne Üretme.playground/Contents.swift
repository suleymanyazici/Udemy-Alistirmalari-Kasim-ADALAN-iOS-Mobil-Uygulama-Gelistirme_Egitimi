import UIKit

class urun {
    var ad : String?
    var fiyat : Double?
}
var laptop = urun()
laptop.ad = "macbook"
laptop.fiyat = 11569.55

struct araba {
    var renk : String?
    var kapı : Int?
}

var bmw = araba()
bmw.renk = "kırmızı"
bmw.kapı = 4
print(bmw.renk!)
