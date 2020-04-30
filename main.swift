//swiftc will compile all the files
//any file with top level code will be then entry point
//usually named main.swift
//the code will then need to be run with ./main in the console
import Foundation
system("clear")
let days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"] 
var p = Player()
var weeks = 0
p.add(bank: Bank(name:"FirstBank"))
var read:String?
var crypto = 13.0
var bankPrice = 500000.00
var loanPrice = 700.00
var lobbyistPrice = 0.04
public func weekLoop(){
  //player has unlimited banks
  //Each bank has 100 max accounts.
  //get .005 out of every account's value each day
  weeks+=1
  crypto += Double.random(in:0..<0.5)
  print("We are currently on week \(weeks)")
  print("Cryptocurrency's total share is %\(String(format: "%.02f", crypto))")
  for day in days{
    print(day)
    addDay()
    sleep(1)
  }
  //you can make system calls
  
}

public func addDay(){
  //20% chance of adding account to each bank.
  for bank in p.getBank(){
    bank.accrue()
    p.addMoney(cash:bank.takeInterest())
    if(Int.random(in:0..<10)<=3){
      var c = Customer(name: "Josh")
      var s = SavingsAccount(number:1, balance: Double.random(in:0..<100.0), customer: c)
      bank.add(account: s)
      //print("   account added")
    }
  }
}

public func printOptions(){
  print("==OPTIONS==\ns: shop \nexit: exit \nAnything else: go to next week")
  print("Player money: \(String(format: "$%.02f", p.getMoney()))")
}
//the != operator requires whitespace
//main game loop
while(read != "exit"){
  weekLoop()
  //this bang operator used on an optional.
  //if the optional is nil, and try to unwrap a nil object
  //we will throw a runtime error
  printOptions()
  read = String(readLine()!)
  if(read == "s"){
    system("clear")
    print("b - Buy Bank: \(String(format: "$%.02f", bankPrice))\tCurrently have: \(p.getBank().count)")
    print("l - Buy Lobbyists: \(String(format: "$%.02f", lobbyistPrice))\tCurrently have: \(p.getBank().count)")
    print("p - Activate predatory loans: \(String(format: "$%.02f", loanPrice))\tCurrently have: \(p.getLobbyists())")
    print("o -  Increase Overdraft Fee: \(String(format: "$%.02f", 0.0))\tCurrently have: \(p.hasLoans())")
    print("e - exit")
    read = String(readLine()!)
  }
  system("clear")
}



