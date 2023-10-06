import UIKit
/*
enum Hatalar : Error{
    case sifiraBolunmeHatasi
}

func bolum(s1: Int, s2: Int) throws -> Int{
    if s2 == 0{
        throw Hatalar.sifiraBolunmeHatasi
    }
    return s1 / s2
}


var s1 = 10
var s2 = 0



do{
    let sonuc = try bolum(s1: s1, s2: s2)
}catch Hatalar.sifiraBolunmeHatasi{
    print("Sayi sıfıra bölünemez")
}
*/
enum AcceptedError : Error{
    case ageNotStaisfy
    case nameNotSatisfy
}

struct Person {
    let name : String?
    let age : Int?
}

struct Community {
    let accceptedName : String?
    let acceptedAge : Int?
    
    func enter(Person : Person) throws {
        if Person.name != accceptedName{
            throw AcceptedError.nameNotSatisfy
        }
        if Person.age != acceptedAge{
            throw AcceptedError.ageNotStaisfy
        }
    }
}

let person1 = Person(name: "Sülo", age: 23)
let person2 = Person(name: "Silo", age: 23)
let person3 = Person(name: "Sülo", age: 13)

let community = Community(accceptedName: "Sülo", acceptedAge: 23)

do{
    try community.enter(Person: person1)
}catch{
    print("Person2 Error \(error)")
}

do{
    try community.enter(Person: person2)
}catch{
    print("Person2 Error \(error)")
}

do{
    try community.enter(Person: person3)
}catch{
    print("Person2 Error \(error)")
}

