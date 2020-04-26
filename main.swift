//swiftc will compile all the files
//any file with top level code will be then entry point
//usually named main.swift
//the code will then need to be run with ./main in the console
import Foundation
print("woah")
var b = Bank(name:"Bank1")
var cust = Customer(name: "BObby")
var c = SavingsAccount(number:1, balance: 5, customer: cust)
//constructors can be passed to initialization
cust = Customer(name:"coolGuy");
var d = CheckingAccount(number:2, balance: 24020, customer: cust )
//print(c.toString())
//lable needs call
b.add(account: c)
b.add(account: d)
print("Bank \(b.toString())")
b.accrue(rate:2.2)
print("Bank \(b.toString())")

