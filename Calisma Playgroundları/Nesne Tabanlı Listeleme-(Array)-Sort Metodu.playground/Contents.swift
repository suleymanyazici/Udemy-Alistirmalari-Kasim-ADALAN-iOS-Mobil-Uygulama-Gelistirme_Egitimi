class Kisiler{
    var ad:String?
    var no:Int?
    
    init(ad:String, no:Int ) {
        self.ad = ad
        self.no = no
    }
}

var k1 = Kisiler(ad: "Ayşe", no: 123235423435)
var k2 = Kisiler(ad: "Mehmet", no: 83746536)
var k3 = Kisiler(ad: "Batu", no: 1322351345)

var kisiler = [Kisiler]()

kisiler.append(k1)
kisiler.append(k2)
kisiler.append(k3)

for kisi in kisiler{

    print("\(kisi.no!) - \(kisi.ad!)")
}
let noSiralama = kisiler.sorted(by: {$0.no! > $1.no! })
let noSiralama2 = kisiler.sorted(by: {$0.ad! < $1.ad! })

for kisi in noSiralama{

    print("\(kisi.no!) - \(kisi.ad!)")
}

for kisi in noSiralama2{

    print("\(kisi.no!) - \(kisi.ad!)")
}
