//The class doesn't use customers as we don't have that class yet. 
//subclass will be like class CheckingAccount : Account
//and the funcs that need to be overwritten will use "override"
public class Account {
    //needs initializers to run
    private var number = 1;
    //private var customer: Customer;
    private var balance = 0.0;

    public func accrue(rate: Double) -> (){};

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
      return "\(number):\(balance)"
    }
}

var acc = Account()
//parameters require names
acc.deposit(amount: 25)
print(acc.toString())

