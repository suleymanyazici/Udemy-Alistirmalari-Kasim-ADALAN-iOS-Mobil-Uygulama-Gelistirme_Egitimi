import UIKit

class Ev{
    var pencereSayisi : Int?
    init(pencereSayisi:Int) {
        self.pencereSayisi = pencereSayisi
    }
}
class Saray : Ev{
    var kuleSayisi : Int?
    init(kuleSayisi:Int, pencereSayisi:Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi:pencereSayisi)
    }
}

class Villa : Ev{
    var garajVarmi : Bool
    init(garajVarmi : Bool, pencereSayisi:Int) {
        self.garajVarmi = garajVarmi
        super.init(pencereSayisi: pencereSayisi)
    }
}

var mustakil = Villa(garajVarmi: true, pencereSayisi: 27)
var sato = Saray(kuleSayisi: 8, pencereSayisi: 55)
print(sato.kuleSayisi!,sato.pencereSayisi!)

