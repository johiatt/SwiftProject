//The class doesn't use customers as we don't have that class yet. 
//subclass will be like class CheckingAccount : Account
//and the funcs that need to be overwritten will use "override"
import Foundation
public class Account {
    //in order for the properties to be inherited, they can't be private? 
    //does internal have enouh protection? 

    //needs initializers to run
    internal var number: Int;
    //private var customer: Customer;
    internal var balance: Double;
    //init is the constructor
    init(number:Int, balance: Double){
      self.number = number
      self.balance = balance
    }

    public func accrue(rate: Double) -> (){};
    //public func accrue(){};

    //can't have the same name as private variable
    func accBalance() -> Double {
	    return balance;
    }

    func deposit(amount: Double) -> () {
    	balance+=amount;
    }

    func withdraw(amount: Double) -> () {
	    balance-=amount;
    }

    func toString() -> String{
	    //return number+":"+customer+":"+balance;
      //the string system makes it very easy to add variables
      //to the toString. No "addition" of strings.
      return "\(number) : \(balance)"
    }
}

public class AccountSub : Account {
  private var interest  = 0.0;
  //overriding instance method must be as accessible as the declaration it overrides
  override init(number:Int, balance: Double){
    // self.number = number
    // self.balance = balance
    super.init(number: number, balance:balance)
  }
  public override func accrue(rate: Double) ->(){
    	interest+=balance*rate;
	    balance+=balance*rate;
  }
}




public func delay(bySeconds seconds: Double, dispatchLevel: DispatchLevel = .main, closure: @escaping () -> Void) {
    let dispatchTime = DispatchTime.now() + seconds
    dispatchLevel.dispatchQueue.asyncAfter(deadline: dispatchTime, execute: closure)
}

public enum DispatchLevel {
    case main, userInteractive, userInitiated, utility, background
    var dispatchQueue: DispatchQueue {
        switch self {
        case .main:                 return DispatchQueue.main
        case .userInteractive:      return DispatchQueue.global(qos: .userInteractive)
        case .userInitiated:        return DispatchQueue.global(qos: .userInitiated)
        case .utility:              return DispatchQueue.global(qos: .utility)
        case .background:           return DispatchQueue.global(qos: .background)
        }
    }
}



//parameters require names
// acc.deposit(amount: 25)
// acc.withdraw(amount: 10)
// print(acc.accBalance())
// print(acc.toString())

