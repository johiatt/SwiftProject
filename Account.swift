//subclass will be like class CheckingAccount : Account
//and the funcs that need to be overwritten will use "override"
import Foundation
//must be abstract meaning no defined variables
public class Account {
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

    func getBalance() -> Double {
	    return balance;
    }

    func deposit(amount: Double) -> () {
    	balance+=amount;
    }

    func withdraw(amount: Double) -> () {
	    balance-=amount;
    }

    func toString() -> String{
      //the string system makes it very easy to add variables
      //to the toString. No "addition" of strings required.
      return "\(customer.toString()) : \(number) : \(balance)\n"
    }
}