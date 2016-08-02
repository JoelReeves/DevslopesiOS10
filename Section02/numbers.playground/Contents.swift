import UIKit

var age = 30
var weight = 200
var milesRan = 56.45
var pi: Float = 3.14

/*
 won't work because you can't convert a Double into a Float
 by default Swift prefers Doubles
 
 pi = milesRan
*/

var area = 15 * 20
var sum = 5 + 6
var diff = 10 - 3
var div = 12 / 3
var div1 = 13 / 5
var remainder = 13 % 5

var result = "The result of 13 / 5 is \(div1) with a remainder of \(remainder)"

var randomNumber = 12

if randomNumber % 2 == 0 {
    print("this is an even number")
} else {
    print("this is an odd number")
}

var result2 = 15 * ((5 + 7) / 3)