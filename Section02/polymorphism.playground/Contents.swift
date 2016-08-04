import UIKit

class Shape {
    var area: Double?
    
    func calculateArea(valueA: Double, valueB: Double) {
        
    }
}

class Triangle: Shape {
    override func calculateArea(valueA: Double, valueB: Double) {
        area = (valueA * valueB) / 2
        
        if let a = area {
            print("Triangle area: \(a)")
        } else {
            print("unable to calculate area")
        }
    }
}

class Rectangle: Shape {
    override func calculateArea(valueA: Double, valueB: Double) {
        area = valueA * valueB
        
        if let a = area {
            print("Rectangle area: \(a)")
        } else {
            print("unable to calculate area")
        }
    }
}

let triangle = Triangle()
triangle.calculateArea(valueA: 50.0, valueB: 20.0)

let rectangle = Rectangle()
rectangle.calculateArea(valueA: 50.1, valueB: 50)


let someArray = ["Candy", 500, "Eef", true]