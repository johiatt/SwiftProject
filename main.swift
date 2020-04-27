//swiftc will compile all the files
//any file with top level code will be then entry point
//usually named main.swift
//the code will then need to be run with ./main in the console
import Foundation
var b = Bank(name:"Bank1")
var c = SavingsAccount(number:1, balance: 5, customer: Customer(name: "Bob"))
//accrue is not changing values? 
print(c.getBalance())
c.accrue(rate: 40)
print(c.getBalance())
print(c.getInterest())
//toplevel functions work..
//c.deposit(amount:50)
//print(c.getBalance())

// print(c.toString())
//constructors can be passed to initialization
// var d = CheckingAccount(number:2, balance: 24020, customer: Customer(name:"Joe"))
//print(d.number)
//print(c.toString())
//lable needs call

// b.add(account: c)
// b.add(account: d)
// b.add(account: Account(number:3, balance:12409, customer: Customer(name:"Jeff")))
// b.accrue(rate:25)
// print(b.toString())
// b.accrue(rate:2.2)
// print(b.toString())
// b.accrue(rate:2.2)
// print(b.toString())

//.gitignore test
