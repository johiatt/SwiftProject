import Foundation
public class Bank {
    //in order for the properties to be inherited, they can't be private? 
    //does internal have enouh protection? 

    //needs initializers to run
    private var accounts = [Account]()
    private var name: String;
    init(name: String){
      self.name = name
    }

    public func add(account: Account ) -> () {
	    accounts.append(account);
    }

    public func accrue(rate: Double) {
      for account in accounts{
          account.accrue(rate: rate);
      }
    }

    public func toString() -> String{
      var r="Bank: \(name)\n";
      for item in accounts{
          r+="\(item.toString())";
      }
      return r;
    }
}