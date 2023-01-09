import UIKit

var name1 = "alex"
name1 = "karen"
name1
var name2 = "suzanna"
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

