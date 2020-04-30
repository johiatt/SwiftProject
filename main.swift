//swiftc will compile all the files
//any file with top level code will be then entry point
//usually named main.swift
//the code will then need to be run with ./main in the console
import Foundation
let days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"] 
var p = Player()
var weeks = 0
p.add(bank: Bank(name:"FirstBank"))
var read:String?
public func weekLoop(){
  //player has unlimited banks
  //Each bank has 100 max accounts.
  //get .005 out of every account's value each day
  weeks+=1
  print(weeks)
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
    if(Int.random(in:0..<10)<=3){
      var c = Customer(name: "Josh")
      var s = SavingsAccount(number:1, balance: Double.random(in:0..<100.0), customer: c)
      bank.add(account: s)
      print("account added")
    }
  }
}
//the != operator requires whitespace
while(read != "exit"){
  weekLoop()
  //this bang operator used on an optional.
  //if the optional is nil, and try to unwrap a nil object
  //we will throw a runtime error
  read = String(readLine()!)
  system("clear")
}



