import UIKit

class Faktoriyel{
    func faktoriyel(sayi:Int) -> Int{
        var carpim = 1
        for i in 1...sayi{
            
            carpim = carpim * i
        }
        return carpim
    }
}
var sayi1 = Faktoriyel()
sayi1.faktoriyel(sayi: 5)

