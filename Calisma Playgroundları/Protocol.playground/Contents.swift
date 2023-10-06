import UIKit

protocol Protocol1{
    var ilkSayi : Int {get set}
    
    func func1(ilkSayi:Int) -> String
    func func2()
}

class class1 : Protocol1{
    var ilkSayi = 10
    
    
    func func1(ilkSayi: Int) -> String {
        return "\(ilkSayi) seçtiğin sayi"
    }
    
    func func2() {
        print("func2 çalişti")
    }
    
    
}

var a = class1()

print(a.func1(ilkSayi: 10))
a.func2()
