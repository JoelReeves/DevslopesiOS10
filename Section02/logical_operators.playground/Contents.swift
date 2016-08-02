import UIKit

let allowedEntry = false

if !allowedEntry {
    print("access denied")
}


let enteredDoorCode = true
let passedRetinaScan = false
let iAmTomCruise = false

if enteredDoorCode && passedRetinaScan || iAmTomCruise {
    print("welcome")
} else {
    print("access denied again")
}


let hasDoorKey = false
let knowsOverridePassword = true

if hasDoorKey || knowsOverridePassword {
    print("Welcome!!!")
} else {
    print("you locked out sucka")
}
