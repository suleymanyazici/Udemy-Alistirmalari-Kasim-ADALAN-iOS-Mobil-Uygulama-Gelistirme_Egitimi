import UIKit

class  Math{
    func topla(sayi1:Int, sayi2:Int){
        print(sayi1 + sayi2)
    }
    
    func topla(sayi1:Double, sayi2:Int){
        print(sayi1 + Double(sayi2))
    }
    
    func topla(sayi1:Double, sayi2:Double) -> Double{
        return (sayi1 + sayi2)
    }
    
    func topla(sayi1:Int, sayi2:Int, ad:String){
        print("\(ad) şimdi size \(sayi1 + sayi2) cevabını verecek")
    }
}

var islem = Math()

islem.topla(sayi1: 15, sayi2: 20, ad: "mahmut")
islem.topla(sayi1: 25, sayi2: 50)
islem.topla(sayi1: 50.36234663545687, sayi2: 20)
