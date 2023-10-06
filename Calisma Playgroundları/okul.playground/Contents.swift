
class Personel{
    func iseAlindi(){
        print("İşe Alım Gerçekleşti")
    }
}

class Mudur: Personel{
    func iseAl(p: Personel){
        p.iseAlindi()
        if p is Ogretmen{
            (p as! Ogretmen).kadro()
        }
        if p is Isci{
            (p as! Isci).kadro()
        }
    }
    func terfiEttir(p : Personel){
        
        if p is Ogretmen{
            (p as! Ogretmen).maasArttı()
        }
        if p is Isci{
            print("İşçi terfi alamaz")
        }
    }
}

class Isci: Personel{
    func kadro(){
        print("Personel Kadrosu Tamamlandı")
    }
}

class Ogretmen: Personel{
    
    func maasArttı(){
        print("Maaş Arttı Yavşak batu mutlu")
    }
    
    func kadro(){
        print("Ogretmen Kadrosu Tamamlandı")
    }
    
}


var ogretmen: Personel = Ogretmen()
var isci: Personel = Isci()
var mudur = Mudur()
mudur.iseAl(p: ogretmen)
mudur.iseAl(p: isci)
mudur.terfiEttir(p: ogretmen)
mudur.terfiEttir(p: isci)
