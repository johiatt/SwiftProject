import Foundation
public class Bank {
    //needs initializers to run
    private var accounts = [Account]()
    private var max = 100
    private var size = 0
    private var name: String
    private var rate = 1.0
    init(name: String){
      self.name = name
    }

    public func add(account: Account ) -> () {
      if(size>=max){
        print("Bank full")
      }
	    else{
        //size++    --not allowed
        size+=1
        accounts.append(account)
        print("\(account.toString()) added to \(self.toString())")
      }
      
    }

    public func accrue() {
      for account in accounts{
          account.accrue(rate: self.rate)
      }
    }

    public func getAcc() -> Array<Account>{
      return accounts
    }

    public func toString() -> String{
      var r="Bank: \(name)\n"
      for item in accounts{
          r+="\(item.toString())"
      }
      r+="Accounts: \(accounts.count)"
      return r
    }

    public func getRate() -> Double {
      return rate
    }

    public func takeInterest() -> Double {
      var total = 0.0
      for account in accounts{
        //to be a valid floating point literal it must be 0.05 rather
        //than .05
        total += 0.05*account.getBalance()
        account.withdraw(amount:0.05*account.getBalance())
      }
      return total
    } 
}