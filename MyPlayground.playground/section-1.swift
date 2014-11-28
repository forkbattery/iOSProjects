// Playground - noun: a place where people can play

import UIKit

//variables, swift infers data types

var str = "Hello, playground"

var highScore = 100
var firstName = "Grace"
var isActive = true

var myVariable : Int;

var myFloat : Float = 1.0;

//'let' creates a constant

let hello = "Hello world" //cannot be changed

//string interpolation

println("This is \(hello)")

var lives = 2;

println("\(highScore*lives)");

var points = 3.5

println("\(Double(lives) * points)"); //type casting. Swift doesn't implicitly convert values

var myVar : [String]

myVar = ["Vanilla", "Hello"]

// creating dictionary

var states = [ "AZ" : "Arizona", "CA" : "California"]

var products : [Int:String]

states.updateValue("Nevada", forKey: "NV")

for (key, value) in states{
    println("\(key) is short for \(value)")
}

var myTuple = ("Hello", 12345, true)

//instead of just returning a string or int for example, you can return a tuple like this

func getCurrentSongAndDuration() -> (name:String, length:Int) {
    return ("Moonlight in Vermont", 210);
}



class BankAccount {
    class var name : Int {
        return 10
    }
    
}


