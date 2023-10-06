import UIKit


class Net{
    var ucret = 0
    
    func ucretHesap(kota:Int) -> Int {
        if kota > 50{
            var asım = kota - 50
            ucret = 100 + (asım * 4)
        }else{
           ucret = 100
        }
        return ucret
    }
}
var a = Net()
print("Ödenecek Ücret : \(a.ucretHesap(kota: 120))")
var b = Net()
print("Ödenecek Ücret : \(b.ucretHesap(kota: 23))")
