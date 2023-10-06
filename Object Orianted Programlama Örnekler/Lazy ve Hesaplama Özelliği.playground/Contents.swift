import UIKit

/*
class Lazy{
    lazy var no = 39
}
var no = Lazy()
no.no
*/

class Ucret{
    var maas = 100000.0
    var bonus = 1.10
    
    var haftalikMass : Double{
        get{
            return (maas * bonus) / 52
        }
        set (yeniHaftalikMaas){
            self.maas = yeniHaftalikMaas * 52
        }
    }
}

var m = Ucret()
m.maas
m.haftalikMass

m.haftalikMass = 6000 // bir değer setler otomatik olarak set çalışır yoksa get çalışır

m.maas
