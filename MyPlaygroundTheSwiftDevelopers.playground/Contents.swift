import UIKit

var name1 = "Alex"
name1 = "karen"
name1
var name2 = "Suzanne"
//print(name1 + " " + "dev" + " " + name2 + "  " + "teacher")

//MARK: - lesson 2 base types

var variable = 10
let const = 22
var a1: Int = 10
var a2: Double = 2.5
var a3: Float = 3.9
var a4 = 55
//var c = a1 + a2 error!!!
var c = Double(a1) + a2
var i = 5 + 5.5
type(of: i)

typealias myNumber = Int
var testNum: myNumber = 10
type(of: testNum)

var booleanTrue = true
var booleanFalse = false

if booleanFalse == true {
    print("true Hello")
}

//MARK: - lesson 3 strings

var str1 = "string"
var str2: String = "string"
var a = ""
var b = String()

a = "hello"
b = "world"

//print(a + " " + b)

var number = 10
//print("number \(number)")

var char: Character = "x"

str1 + String(char)
str2.append(char)

//  ИТЕРАЦИЯ
//for c in "hello max" {
//    print (c)
//}

a = a + b
a += b

a.count

a.hasPrefix("h")
a.hasSuffix("ld")

//MARK: - lesson 4 array

let constArray = ["a", "b","c","d"]
let constArray2: [String] = ["a", "b","c","d"]
constArray.count

var array = [String]()

//if array.count == 0 {
//    print("array is empty")
//}
//if array.isEmpty {
//    print("array is empty")
//}

array += constArray
array + ["e"] // no save new element in array
array.append("f")
array += ["e"]
array.append("f")
array

array[1]
array[1...4]
array[1..<4]

array.insert("-", at: 3)
array.remove(at: 3)
array
array.removeLast()
array.removeFirst()
array

//MARK: - lesson 5 tuples

let oneTuple: (Int, String, Double, Bool) = (1,"ten", 25.5, true)
let oneTuple2 = (1,"ten", 25.5, true)
let (numberValue, nameValue, decimalValue, boolValue) = oneTuple
nameValue

let (_, _, cTuple ,_) = oneTuple
cTuple

oneTuple.0
oneTuple.2

let tuple1 = (one:1, nameTwo: "ten", boolThree: true) //предпочтительный вариант
tuple1.one
tuple1.0

let (name11, name22, name33) = ("one", "two", "three")
name11
name22

//MARK: - Dictionary

let dic1: [Int: String] = [0: "zero", 1: "one"]
dic1

let dic2: Dictionary<String, Double> = ["one": 1.0, "two": 2.0]
dic2

let dic3 = [0: "zero", 1: "one"]
dic3[0]
dic3.keys
dic3.values
//print( dic3.enumerated().map{"keys\($1) and values\($0)"} )

var dict = ["car": "mers", "phone": "iPhone"]
dict.count
dict.description
dict.isEmpty

var namesOfIntegers = [Int: String]() // empty dict
var namesOfIntegers2 : [Int: String] = [:] // empty dict
namesOfIntegers.isEmpty

dict["mouse"] = "logitech"
dict
dict.updateValue("BMW", forKey: "car")
dict

dict["car"] = nil
dict
dict.removeValue(forKey: "phone")
dict
dict = [:] // remove All
dict

var dict2 = ["mouse": "logitech", "car": "BMW", "phone": "iPhone"]

//for key in dict2.keys {
//    print("\(key), value = \(dict2[key]!)")
//}

//for (key, value) in dict2 {
//    print("\(key), value = \(value)")
//}

//MARK: - lesson 7 Optional


var date: String?

date = "30.12.2023"

//print(date)

//if date != nil {
//    print("current date = \(date)")
//} else {
//    print("no date")
//}

//if let unwrappedDate = date {
//    print(unwrappedDate)
//} else {
//    print("no date")
//}

//print(date!) //bad solution
//if date != nil {
//    date!
//} else {
//    print("no date")
//}

let age : String = "20"
//print(Int(age))

//MARK: - lesson 8 switch if else break

for i in 0...200 {
    if i == 15 {
        break
    }
    //print(i)
}

var day = 6

//if day == 1 {
//    print("weekday")
//} else if day == 2 {
//    print("weekday")
//}  else if day == 3 {
//    print("weekday")
//}  else if day == 4 {
//    print("weekday")
//}  else if day == 5 {
//    print("weekday")
//}  else if day == 6 {
//    print("weekend")
//}  else if day == 7 {
//    print("weekend")
//}

//switch day {
//case 1...5: print("weekday")
//case 5...7: print("weekend")
//default: break
//}

let nameWork = "Swift dev"
let ageSwift = 51
let peopleSex = "M"

//switch(nameWork, ageSwift) {
//case(_, 1...17): print( "forbidden to work" )
//case("Swift dev", 18...50) where peopleSex == "W": print("no women in our company mother fuckers")
//case("Swift dev", 18...50) where peopleSex == "M": print ("offer is your's")
//case let (name, age): print("\(name) in \(age) ?") // value banding
//default: break
//}


//MARK: - lesson 9 Function

// 1 way
var dairyArray = [String]()

let nameStudent1 = "Vova"
let occupation1 = "WebDev"

dairyArray.append(nameStudent1)
dairyArray.append(occupation1)

let nameStudent2 = "Koly"
let occupation2 = "Artist"

dairyArray.append(nameStudent2)
dairyArray.append(occupation2)

let nameStudent3 = "Toly"
let occupation3 = "Doctor"

dairyArray.append(nameStudent3)
dairyArray.append(occupation3)

dairyArray

// 2 way

var dairyArray2 = [String]()

func addStudents(name: String, occupation: String) -> Void {
    dairyArray2.append(name)
    dairyArray2.append(occupation)
}

addStudents(name: "Bublic", occupation: "Police")
addStudents(name: "Matvei", occupation: "Moping")
addStudents(name: "Anton", occupation: "Admin")

dairyArray2


func calc (number1: Int, number2: Int) -> Int {
    
    return number1 + number2
}

let sum = calc(number1: 4, number2: 90)
sum

var money = [1, 2, 44, 65,77,3,5,6,7,99,45,2]
var money2 = [1, 2, 43, 65,747,3,50,46,7,99,445,21]

func calculate(inArray: [Int]) -> Int {
    var sum = 0
    for i in inArray {
        sum += i
    }
    return sum
}
calculate(inArray: money)
calculate(inArray: money2)
money.reduce(0, +) // reduce


func generalFunc(answer: Bool) -> () -> String {
    func sayYes() -> String{
        return "Yes"
    }
    func sayNo() -> String {
        return "No"
    }
    
    return answer ? sayYes : sayNo
}


generalFunc(answer: true)()

//MARK: - lesson 10 Closure

func nameF(a: String) {
    
}

let names = ["Bob", "Anna", "Jack", "Den", "Ben", "Dr.Martin", "any"]

let s = names.sorted()

let t1 = names.sorted { s1, s2 in
    return s1 < s2
}
let t3 = names.sorted { s1, s2 in
    return s1.count < s2.count
}

let t2 = names.sorted(by: <)

func makeHello (string: String) -> (String) -> String {
    return {(name: String) -> String in return (string + " " + name)}
}

var nameForHello = makeHello(string: "Hey")
nameForHello("Karen")

//MARK: - lesson 11 enum

enum TravelClass {
    case First, Business, Economy
}

let travel = TravelClass.First

let travel2 = TravelClass.self
travel2.First


enum Medal {
    case gold
    case silver
    case bronze
}

let medal = Medal.gold

switch medal {
case .gold: 5
case .silver: 3
case .bronze: 1
}

enum Weekdays {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    enum Friday {
        case day
        case night
    }
    case Saturday
    case Sunday
    
}

var friday = Weekdays.Friday.day

enum Operation {
    case double(Double)
    case integer(Int)
    case float(Float)
    case string(String)
}

var dictionary: Dictionary<String, Operation> = [
    "Double": .double(34.3),
    "Integer": .integer(10),
    "Float": .float(44.4),
    "String": .string("hello")
]

dictionary["String"]
dictionary["Float"]

//MARK: - lesson 12 Class

class ParentsClass {
    var array = [String]()
    
    var name = ""
    var age = 20
    
    
    
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class Son: ParentsClass {
    func method(name: String) {
        //print("Hello, \(name)")
    }
}

let sonClass = Son(name: "dudu", age: 44)  // экземпляр класса
sonClass.name // свойства класса
sonClass.method(name: "karen") // метод экземпляра класса

sonClass.name = "bubu"
sonClass.age = 12
sonClass.name


struct NameStruct {
    var name: String
    var age: Int
}

var str = NameStruct(name: "nana", age: 11)
str.name = "fafa"
str.name

//MARK: - lesson 13 Property

struct Observer {
    var name: String {
        willSet {
            //print(newValue)
        }
        didSet {
            //print(oldValue)
            name = name.uppercased()
        }
    }
    
}

var obser = Observer(name: "Jack")

obser.name // getter
obser.name = "Sven" // setter
obser.name

struct ComputerProperty {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        get {
            firstName.capitalized + " " + lastName.capitalized
        }
        
        set {
            print("setter worked \(newValue)")
        }
    }
}

var comp = ComputerProperty(firstName: "Karen", lastName: "vardanian")

comp.fullName


//MARK: - lesson 14 Property Type

struct MyStruct {
    
    static var count = 0
    var name = String()
    
    init(name: String) {
        self.name = name
        MyStruct.count += 1
    }
}

var structTest1 = MyStruct(name: "Jack")
var structTest2 = MyStruct(name: "Sem")
var structTest3 = MyStruct(name: "Anna")
var structTest4 = MyStruct(name: "Bob")
MyStruct.count


class AgeBoy {
    
    static var ageMax = 15
    var name: String = ""
    var age = 7 {
        didSet {
            if age > AgeBoy.ageMax {
                age = oldValue
            }
        }
    }
}

var ageClass = AgeBoy()
ageClass.name = "Ivan"
ageClass.age = 5
ageClass.age

//MARK: - lesson 15 Subscript

struct Table {
    var multi: Int
    subscript(index: Int) -> Int {
        get {
            
            return multi * index
        }
    }
}

var tableResult = Table(multi: 3)
tableResult[10]

struct Man {
    var man1 = "hello"
    var man2 = "i'm grood"
    var man3 = "Hi"
    
    
    subscript(index: Int) -> String? {
        get {
            switch index {
            case 0: return man1
            case 1: return man2
            case 2: return man3
            default:
                return "empty"
            }
        }
        set {
            switch index {
            case 0: return man1 = newValue ?? ""
            case 1: return man2 = newValue ?? ""
            case 2: return man3 = newValue ?? ""
            default:
                break
            }
        }
    }
}


var say = Man()
say[0]


//MARK: - lesson 16   OOP

class People {
    var name = "jon"
    var lastName = "smith"
    var fullName: String {
        name + " " + lastName
    }
    
    func printMethod() -> String {
        "Your name = "
    }
    
}

class Man2: People {
    
    override func printMethod() -> String {
        return super.printMethod() + "jack"
    }
}


let people = People()
people.name
people.printMethod()
let man = Man2()
man.fullName
man.printMethod()


// ----- ИНКАПСУЛЯЦИЯ
class Boys {
    public var firstName = "bob"
    private var lastName = "black"
    final func printHi () {
        print("Hi")
    }
}


class Girls: Boys {
    
}

let girls = Girls()
girls.firstName


// -----ПОЛИМОРФИЗМ
class General  {
    func methodHi() {
        print("Hello General Method")
    }
    
}

class People1 : General {
    override func methodHi() {
        print("Hi People!")
    }
}

class People2: General {
    override func methodHi() {
        print("Hi People2")
    }
}

let general1 = General()
let people1 = People1()
let people2 = People2()



var array1 = [general1, people1, people2]


//for obj in array1 {
//    obj.methodHi()
//}


//MARK: - lesson 17 ARC - automatic reference counting


class Person2 {
    var name : String
    
    init(name: String) {
        self.name = name
       // print("\(name) init and create in memory")
    }
    
    deinit {
        //print("\(name) deleted from memory")
    }
}

var ref1: Person2?
var ref2: Person2?
var ref3: Person2?


ref1 = Person2(name: "Jack")

ref2 = ref1
ref3 = ref1

ref1 = nil
ref2 = nil
ref3 = nil

//----цикл сильных ссылок или перекрестные ссылки

class Hotel {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    var apartment : Apartment?
    
    deinit {
       // print("\(name) is gone")
    }
}

class Apartment {
    let room: String
    
    init(room: String) {
        self.room = room
    }
    
   weak var hotel: Hotel?
    
    deinit {
        //print("apartment \(room) is clear")
    }
}

var objHotel: Hotel?
var objApartment: Apartment?

objHotel = Hotel(name: "John Smith")
objApartment = Apartment(room: "122")

objHotel!.apartment = objApartment
objApartment!.hotel = objHotel

objHotel = nil
objApartment = nil


//---- Бесхозная ссылка----unowned

class Country {
    let name: String
    
    var capitalCity: City!

    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
}

class City {
    let name: String
    
   unowned let country: Country
    
    init(name: String, country: Country ) {
        self.name = name
        self.country = country
    }
}


var country = Country(name: "Russia", capitalName: "Moscow")

//MARK: - lesson 18 Optional chaining

class Address {
    let street = "Tverskay"
    let number = 18
}

class Home {
    let address = Address()
    let room: Int? = 3
    var parking: Parking? = Parking()
    func printRoom()  {
        print("the number of rooms is \(room)")
    }
}


struct Parking {
    var carPlace = 5
}

class Parents {
    var cars: [String]? = ["Mercedes"]
    var home: Home? = Home()
}

let parents = Parents()

//parents.cars![0]
//parents.home!.parking!.carPlace

parents.home?.parking?.carPlace

if (parents.home?.parking?.carPlace = 7) != nil {
    //print("setup")
} else {
    //print("don't setup")
}


parents.cars![0]
parents.cars?[0]


//MARK: - lesson 19 Type

class Media {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
class Film: Media {
    var director: String
    
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}
class Music: Media {
    var artist: String
    
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let mediaArray: [Media] = [
    Film(name: "Casablanca", director: "Mickhail"),
    Music(name: "Blue Shoes", artist: "Elvis Presley"),
    Film(name: "Kane", director: "Citizen"),
    Music(name: "Queen", artist: "Abba"),
    Film(name: "Avatar", director: "Cameron"),
]

var count = (musicCount: 0, filmCount: 0)

for obj in mediaArray {
    if obj is Film {
        count.filmCount += 1
    } else if obj is Music {
        count.musicCount += 1
    }
}

count

for value in mediaArray {
    if let music = value as? Music {
        music.artist
    } else if let film = value as? Music {
        film.name
    }
}

//MARK: - lesson 20 Extension

extension String {
    func sayHello() {
        //print("Hello")
    }
}

var hello = "hi"
hello.sayHello()

var a111 = String()
a.sayHello()

"hi".sayHello()

extension Int {
    var square: Int {
        return (self * self)
    }
}

var newInt = 340
newInt.square

extension Int {
    func funcSquare () -> Int {
        return (self * self)
    }
}

var sqrInt = 3
sqrInt.funcSquare()

class Vova {
    var nick = "the swift dev"
}

let realVova = Vova()
realVova.nick

extension Vova {
    func allSefl () -> String {
        return "my name is Vova, my nick \(nick)"
    }
}
var secondVova = Vova()
secondVova.allSefl()


//MARK: - lesson 21 Generic

var stringArray = ["hi", "hello", "good bay"]
var intArray = [1,2,3,4,5,6]
var doubleArray = [1.2, 2.7, 3.6, 4.4 ,5.9, 6.1]

func printStringFromArray(a: [String]) {
    for s in a {
        s
    }
}
func printIntFromArray(a: [Int]) {
    for s in a {
        s
    }
}
func printDoubleFromArray(a: [Double]) {
    for s in a {
        s
    }
}

printStringFromArray(a: stringArray)
printIntFromArray(a: intArray)
printDoubleFromArray(a: doubleArray)
// generic best
func printElementFromArray <T> (a: [T]) {
    for element in a {
        element
    }
}

printElementFromArray(a: stringArray)
printElementFromArray(a: intArray)
printElementFromArray(a: doubleArray)

//---v2

func doNothing <T> (x: T) -> T {
    return x
}

doNothing(x: "Hello")
doNothing(x: 5)
doNothing(x: false)
doNothing(x: 2.9)

//---v3

struct GenericArray <T> {
    var item = [T]()
    
    mutating func push(i: T) {
        item.append(i)
    }
}

var myFriendsList = ["Bob", "Jack", "Sam"]

var arrays = GenericArray(item: myFriendsList)
arrays.push(i: "Bill")
myFriendsList
arrays.item
