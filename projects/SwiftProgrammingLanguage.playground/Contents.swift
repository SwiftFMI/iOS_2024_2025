var greeting = "Hello Swift!"

let number = 2


greeting = "Hi!"

//number = 7

print(greeting)

if number > 3 && number % 2 == 0 {
    print("Great!")
} else if number < 1 {
    print("!Great")
} else {
    print("Else?")
}


let someNumber = 10
switch someNumber {
    case 1:
    print("Едно e!")
//        fallthrough
    case 3:
    print("Едно или три")
case 4...10:
     print("[4,10]")
default:
    print("Някакво друго число")
}

let count = 34
let things = "ябълки"
var expression: String
switch count {
case 0:
    expression = "николко"
case 1..<10:
    expression = "няколко"
case 10..<100:
    expression = "десетки"
case 100..<1000:
    expression = "стотици"
default:
    expression = "много"
}
print("\(count) са \(expression) \(things)")


let point = (0, 1, "Ключ")

switch point {
    case (let firstItem, 0, _):
        print("точка (\(firstItem), 0) се намира на абсциса х")
    case (0, let y, _):
        print("точка (0, \(y)) се намира на ордината у")
    case var (x, y, _):
        print("точка (\(x), \(y)) е някъде другаде")
}

print("Point = \(point)")


for index in 1...5 {
    print("\(index) по 5 е \(index * 5)")
}

let names = ["Боян", "Драго", "Емил", "Петко", "Спас"]
for (index,name) in names.enumerated() {
    print("\(index + 1). Здравей, \(name)!")
}

let numberOfLegs = ["паяци": 8, "мравки": 6, "котки": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)те имат \(legCount) крака")
}


let point3D = (x: 0, y: 1, z: 1)
let point3D_2 = (0, 1, 1)
//print(point3D.x)


//var optionlNumber2: Int
//
//print(optionlNumber2)

var optionlNumber: Int? = 7

//print(optionlNumber)
if let myNumber = optionlNumber {
    print("My number is \(myNumber)")
} else {
//    myNumber is invalid
}

//print(optionlNumber)
if let optionlNumber, optionlNumber > 5 {
    print("My number is \(optionlNumber)")
}

func myFunction() -> Int {
    return 1
}

let r = myFunction()
print("r = \(r)")

//func sum(a: Int, b: Int) -> Int {
func sum(a: Int,b: Int) -> Int {
    return a + b
}
print("sum(a,b) = \(sum(a: 1, b: 1))")


//func printMe(a: Int) -> () {
//    print("a = \(a)")
//}

func printMe(a: Int) {
    print("a = \(a)")
}

printMe(a: 1)


enum Color {
    case pink
    case green
    case black
    case blue
    case white
    case noColor
}


let shirtColor = Color.green

var shoeColor: Color = .green
shoeColor = .white


enum Trade {
    case buy(stock: String, amount: Int)
    case sell(stock: String, amount: Int)
}

let buyAPPL = Trade.buy(stock: "APPL", amount: 1000)

switch buyAPPL {
    case .buy(stock: let stock, amount: let amount):
        print("Купи \(stock)")
    case .sell(stock: let stock, amount: let amount):
        print("Продай \(stock)")
}


protocol Sellable {
    var pricePerUnit: Double { get }
    var isAvailable: Bool { set get }
}

extension Sellable {
    var pricePerUnit: Double { 0 }
}


extension Int {
    var toBGN: String {
        "\(self) лв."
    }
}

print(100.toBGN)


struct Merchandise : Sellable {
    var name: String
    var pricePerUnit: Double
    var isAvailable: Bool
   
   //конструктор
   init(name: String, pricePerUnit: Double, isAvailable:Bool) {
        self.name = name
              self.pricePerUnit = pricePerUnit
           self.isAvailable = isAvailable
    }
    
//    var pricePerUnit: Double { 0 }
}


let monkey = Merchandise(name: "Маймуна", pricePerUnit: 100, isAvailable: false)
print(monkey)
print(monkey.pricePerUnit)


class Media {
    var name: String = ""
    var sizeInBytes: Double = 0.0
    
    init(name: String, sizeInBytes: Double) {
        self.name = name
        self.sizeInBytes = sizeInBytes
    }
}


let m = Media(name: "Филм 1", sizeInBytes: 100000)

print("Media = \(m.name)")
//m.name = "Филм 1001"
print("Media = \(m.name)")

// Класове да довършим
