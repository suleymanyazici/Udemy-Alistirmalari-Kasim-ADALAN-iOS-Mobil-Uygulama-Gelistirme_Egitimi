class Fabrika {
    var urun : String?
    var adet : Int?
    func calistir(adet:Int) {
        print("Fabrika Çalışıyor...")
    }
    init(urun : String, adet : Int) {
        self.urun = urun
        self.adet = adet
    }
}

class Motor : Fabrika{
    var motor : Double?
    var renk : String?
    
    
    init(motor : Double, renk : String, adet : Int,urun : String) {
        self.motor = motor
        self.renk = renk
        super.init(urun: urun, adet : adet)
        
    }
    
    override func calistir(adet:Int){
        
        func calistir(adet: Int){
            print("\(adet) sayısı kadar \(motor!) hacimli \(renk!) renginde araç üretimi başlamıştır.")
            super.calistir(adet: adet)
        }
    }
}
class Araba : Motor{
    
    override init(motor : Double, renk : String, adet : Int,urun : String) {
        super.init(motor: motor, renk: renk, adet: adet, urun: urun)
        self.adet = adet
    }
    
    override func calistir(adet :Int){
        print("Seçilen \(motor!) hacimli motor")
        super.calistir(adet: adet)
    }
}

let polo = Araba(motor: 1.6, renk: "Kırmızı", adet: 100, urun: "Hatchback Araç")
polo.calistir(adet: 100)
