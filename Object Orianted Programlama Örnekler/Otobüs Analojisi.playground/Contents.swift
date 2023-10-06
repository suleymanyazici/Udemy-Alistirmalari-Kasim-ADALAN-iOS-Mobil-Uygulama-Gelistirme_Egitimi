import UIKit

class Otobus{
    var model : String?
    var marka : String?
    var isIcerigi : String?
    var koltukSayisi : Int?
    var nereden : String?
    var nereye : String?
    var biletFiyat : Int?
    
    func markaSec(markaSec : String) {
        marka = markaSec
    }
    func modelSec(modelSec : String){
        model = modelSec
    }
    func isIcerigiSec(icerik : String){
        isIcerigi = icerik
    }
    func koltukNoSec(koltuk :Int){
        koltukSayisi = koltuk
    }
    func neredenNereye(neredesin:String, nereGidecen:String, fiyat : Int){
        nereden = neredesin
        nereye = nereGidecen
        biletFiyat = fiyat
    }
    func biletBilgi(){
        print("\(marka!) marka \(model!) model araçla \(nereden!)'dan \(nereye!)'a gidecek olan \(isIcerigi!) nedenli seyahatinizde bilet fiyatınız \(biletFiyat!) ₺ dir \nİyi Yolculuklar Dileriz...")
    }
}

var sahilSeyahat = Otobus()


sahilSeyahat.markaSec(markaSec: "Mercedes")
sahilSeyahat.modelSec(modelSec: "Travego 15SHD")
sahilSeyahat.isIcerigiSec(icerik: "Seyahat")
sahilSeyahat.neredenNereye(neredesin: "İstanbul", nereGidecen: "Rize", fiyat: 1000)
sahilSeyahat.biletBilgi()
