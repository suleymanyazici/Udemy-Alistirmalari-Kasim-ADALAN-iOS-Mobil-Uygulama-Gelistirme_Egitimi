
protocol Squeezable{
    func howToSqueezable()
}

protocol Eatable{
    func howToEatable()
}

class Elma : Squeezable, Eatable{
    func howToSqueezable() {
        print("Meyve Sıkma makinesinde sıkılarak içilir")
    }
    
    func howToEatable() {
        print("Kabukları soylarak yenir")
    }

}

class AmasyaElması : Elma{
    override func howToEatable() {
        print("Dilimle ye")
    }

}


class Tavuk : Eatable{
    func howToEatable() {
        print("Tavuk dişlenerek yenur")
    }
    
}

class Aslan {
}
var elma = Elma()
var amasyaElma:Elma = AmasyaElması()
var tavukHaslama:Eatable = Tavuk()
var aslan = Aslan()


var nesne = [elma, amasyaElma, tavukHaslama, aslan] as [Any]

for yazdır in nesne{
   print("-----------\(yazdır)------------")
    if yazdır is Squeezable{
        (yazdır as! Squeezable).howToSqueezable()
    }else{
        print("Bu ürün sıkılarak tüketilemez.")
    }
    if yazdır is Eatable{
        (yazdır as! Eatable).howToEatable()
    }else{
        print("Bu ürün yiyilebilir br ürün değildir.")
    }
    print("---------------------------------------------------")
}
