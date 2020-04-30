import Foundation
public class Bank {
    //needs initializers to run
    private var accounts = [Account]()
    private var max = 100
    private var size = 0
    private var name: String
    private var rate = 0.0000002
    init(name: String){
      self.name = name
    }

    public func add(account: Account ) -> () {
      if(accounts.count>=max){
        print("Bank full")
      }
	    else{
        //size++    --not allowed
        accounts.append(account)
        print("\t\(account.toString()) added to \(self.getName())")
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
        total += 0.0005*account.getBalance()
        account.withdraw(amount:0.0005*account.getBalance())
      }
      return total
    }

    public func getName() -> String {
      return name
    } 
}