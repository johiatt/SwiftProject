import Foundation
public class Bank {
    //in order for the properties to be inherited, they can't be private? 
    //does internal have enouh protection? 

    //needs initializers to run
    internal var accounts = [Account]()
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
         var x = item.toString()
          r+="\(x)\n";
      }
      return r;
    }
}
//	Bank bank=new Bank();
	// Customer c=new Customer("Ann");
	// bank.add(new CheckingAccount("01001",c,100.00));
	// bank.add(new SavingsAccount("01002",c,200.00));
	// bank.accrue(0.02);
	// System.out.println(bank);