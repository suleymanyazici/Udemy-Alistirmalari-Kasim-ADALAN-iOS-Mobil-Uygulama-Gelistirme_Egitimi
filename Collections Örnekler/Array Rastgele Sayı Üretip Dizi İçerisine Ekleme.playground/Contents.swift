import UIKit

var sayilar : [Int] = []

for _ in 1...10{
    let ekle = Int.random(in: 0...100)
    sayilar.append(ekle)
}
print(sayilar)
