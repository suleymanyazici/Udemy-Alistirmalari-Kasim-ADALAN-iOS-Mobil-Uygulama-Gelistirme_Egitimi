import UIKit

var sayilar : [Int] = [30, 40, 50, 60, 70, 80, 90]
var toplam = 0
for i in sayilar{
    toplam = i + toplam
}

print(toplam)

var ortalama = toplam/sayilar.count
print(ortalama)
