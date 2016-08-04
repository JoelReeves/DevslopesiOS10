import UIKit

var lotteryWinnings: Int?

if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

lotteryWinnings = 100

// preferred syntax
if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
}

var niceCar: Car?
niceCar = Car()
niceCar?.model = "Toyota"

if let car = niceCar, let model = car.model {
    print(model)
}


var cars: [Car]?

cars = [Car]()

if let carArr = cars where carArr.count > 0 {
    // only execute if not nil and if more than 0 elements
} else {
    cars?.append(Car())
    print(cars?.count)
}



class Person {
    private var _age: Int!
    
    var age: Int {
        if _age == nil {
            _age = 0
        }
        return _age
    }
    
    func setAge(newAge: Int) {
        _age = newAge
    }
}

var jack = Person()
print(jack.age)
jack.setAge(newAge: 20)
print(jack.age)



class Dog {
    var species: String
    
    init(someSpecies: String) {
        species = someSpecies
    }
}

var germanShepherd = Dog(someSpecies: "German Shepherd")
print(germanShepherd.species)