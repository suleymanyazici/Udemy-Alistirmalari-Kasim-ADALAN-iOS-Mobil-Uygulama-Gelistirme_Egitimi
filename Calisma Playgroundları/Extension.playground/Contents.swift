import UIKit

extension Double{
    
    var km: Double{return self * 1000.0}
    var m: Double{return self}
    var cm: Double{return self / 100.0}
    var mm: Double{return self / 10000.0}
}
print("10 cm \(10.cm) metredir")
print("10 km \(10.km) metredir")
var sayi = 300.0
print("\(sayi) cm  \(sayi.cm) metredir")

// Extension metod larla nasıl kullanılır

extension String{
    func yerDegistir(eskiHarf:String, yeniHarf:String) -> String{
        return self.replacingOccurrences(of: eskiHarf, with: yeniHarf)
    }
}

let str = "ankara".yerDegistir(eskiHarf: "a", yeniHarf: "e")
print(str)

var meyve = "incir"
var meyveYeni = meyve.yerDegistir(eskiHarf: "i", yeniHarf: "o")
print(meyveYeni)
