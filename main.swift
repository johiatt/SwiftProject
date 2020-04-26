//swiftc will compile all the files
//any file with top level code will be then entry point
//usually named main.swift
//the code will then need to be run with ./main in the console
import Foundation
print("woah")
var b = Bank()
var c = Account(number:5, balance: 5)
//print(c.toString())
//lable needs call
b.add(account: c)
print("Bank \(b.toString())")
