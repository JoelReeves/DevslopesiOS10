import UIKit

class Vehicle {
    var tires = 4
    var headlights = 2
    var horsePower = 468
    var model = ""
    
    func drive() {
        print("vehicle driving")
    }
    
    func brake() {
        print("vehicle stopped")
    }
}


let bmw = Vehicle()
bmw.model = "328i"
bmw.drive()

let ford = Vehicle()
ford.model = "F150"
ford.brake()


func passByReference(vehicle: Vehicle) {
    vehicle.model = "Cheese"
}

print(ford.model)
passByReference(vehicle: ford) // objects are passed by reference
print(ford.model)


var someonesAge = 21

func passByValue(age: Int) {
    let newAge = age
    print(newAge)
}

passByValue(age: someonesAge)
print(someonesAge)