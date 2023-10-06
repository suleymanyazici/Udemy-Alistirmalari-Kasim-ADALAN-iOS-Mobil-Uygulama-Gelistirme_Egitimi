import UIKit

func toplamaVariadic(sayilar:Int...) -> Int {
    var toplam = 0
    for i in sayilar{
        toplam = toplam + i
    }
    return toplam
}

var v = toplamaVariadic(sayilar: 1,2,3,4,5,6,7,8,9)
print(v)
var v2 = toplamaVariadic(sayilar: 15368, 65432, 68498435, 6874987465)
print(v2)
