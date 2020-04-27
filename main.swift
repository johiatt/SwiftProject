//swiftc will compile all the files
//any file with top level code will be then entry point
//usually named main.swift
//the code will then need to be run with ./main in the console
import Foundation
var b = Bank(name:"Bank1")
var c = SavingsAccount(number:1, balance: 5, customer: Customer(name: "Bob"))
print(c.getBalance())
c.accrue(rate: 40)
print(c.getBalance())
print(c.getInterest())