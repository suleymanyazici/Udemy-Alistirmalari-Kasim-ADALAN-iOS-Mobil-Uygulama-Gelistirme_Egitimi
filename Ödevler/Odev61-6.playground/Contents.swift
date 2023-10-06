import UIKit

class Hesap{
        func maasHesapla(gunSayisi:Int)->Int{
            let calismaSaati = gunSayisi*8
            print(calismaSaati)
            var maas = 0
            
            if calismaSaati > 160 {
                let mesaiFazlasi = calismaSaati - 160
                maas = 160*10 + mesaiFazlasi*20
            }else{
                maas = calismaSaati*10
            }
            
            return maas
        }
    }

    let o6 = Hesap()
    let sonuc = o6.maasHesapla(gunSayisi: 22)
    print("Maaş : \(sonuc) TL")
    

