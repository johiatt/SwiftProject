//The class doesn't use customers as we don't have that class yet. 
//subclass will be like class CheckingAccount : Account
//and the funcs that need to be overwritten will use "override"
import Foundation
//must be abstract meaning no defined variables
public class Account {
    //in order for the properties to be inherited, they can't be private? 
    //does internal have enouh protection? 

    //needs initializers to run
    private var number: Int;
    private var customer: Customer;
    private var balance: Double;
    //init is the constructor
    init(number:Int, balance: Double, customer:Customer){
      self.number = number
      self.balance = balance
      self.customer = customer
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
      return "\(customer.toString()) : \(number) : \(balance)\n"
    }
}