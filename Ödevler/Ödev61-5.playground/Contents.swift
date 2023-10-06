import UIKit

class Acı{
    func icAcı(kenar:Int) -> Int {
        var sonuc = 0
        if kenar < 3{
            print("3 kenardan küçük geometrik şekil yoktur")
        }else{
            sonuc = (kenar - 2) * 180
            
        }
        return sonuc
    }
}
var dörtgen = Acı()
print(dörtgen.icAcı(kenar: 2))
