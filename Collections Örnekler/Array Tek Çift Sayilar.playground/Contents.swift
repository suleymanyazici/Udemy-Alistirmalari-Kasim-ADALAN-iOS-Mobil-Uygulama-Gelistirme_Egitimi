import UIKit

var sayilar = [4, 8, 2, 9, 10, 123, 413242, 1312414134]
var tek : [Int] = []
var cift : [Int] = []
for sayi in sayilar{
    if sayi % 2 == 0 {
        cift.append(sayi)
    }else{
        tek.append(sayi)
    }
    
}
print(tek)
print(cift)
