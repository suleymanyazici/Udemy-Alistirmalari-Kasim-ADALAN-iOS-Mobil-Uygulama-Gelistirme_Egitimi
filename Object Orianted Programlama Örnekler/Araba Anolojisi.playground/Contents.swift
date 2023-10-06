import UIKit

class Araba{
    var renk : String?
    var hiz : Int?
    var calisiyorMu : Bool?
    
    func calistir(){
        calisiyorMu = true
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm : Int){
        hiz! += kacKm
    }
    
    func yavasla(kacKm : Int){
        hiz! -= kacKm
    }
    
    func bilgiAl(){
        print("Araç Rengi          : \(renk!)")
        print("Araç Hızı           : \(hiz!)")
        print("Araç Çalışıyor Mu ? : \(calisiyorMu!)")
        print("----------------------------------------")
    }
    
}
var bmw = Araba()
bmw.renk = "Mavi"
bmw.hiz = 0
bmw.calisiyorMu = false
bmw.bilgiAl()

bmw.calistir()
bmw.bilgiAl()
bmw.hizlan(kacKm: 100)
bmw.bilgiAl()
bmw.yavasla(kacKm: 10)
bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()
