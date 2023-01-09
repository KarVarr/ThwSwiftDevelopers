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
