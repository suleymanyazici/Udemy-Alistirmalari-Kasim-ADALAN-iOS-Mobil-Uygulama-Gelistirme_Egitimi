import UIKit

class donustur{
    func dereceToFahrenheit(derece:Double) -> Double{
        let fahrenheit = (derece * 1.8) + 32
        return fahrenheit
    }
}
var returnFahrenheit = donustur()

print(returnFahrenheit.dereceToFahrenheit(derece: 32.5))
	
