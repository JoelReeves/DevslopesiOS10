var message = "Hello, playground"

// Operators

// unary, binary, ternary

var amICool = true // binary works on 2 targets
amICool = !amICool // ! is unary because it only works on 1 target

var feelGoodAboutMyself = true
feelGoodAboutMyself = amICool ? true : false // ? is ternary because it works on 3 targets

var bankAccountbalance = 100
var cashRegistermessage = bankAccountbalance >= 50 ? "You just bought the item!" : "You are broke as a joke!"
