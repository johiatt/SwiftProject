//does not accrue
public class SavingsAccount : Account {
  //private 
  private var interest  = 0.0;
  //internal var balance: Double
  override init(number:Int, balance: Double, customer:Customer){
    //initialize variables you want to use in subclass functions BEFORE super.init call
    //self.balance = balance
    super.init(number: number, balance:balance, customer:customer)

  }
  public override func accrue(rate: Double) ->(){
    //if you want to USE the inherited variable, it needs to be declared 
    //and initialized in the constructor. 
    //self.interest += self.balance*rate
    //self.balance += self.balance*rate
    interest += accBalance()*rate
    deposit(amount:(interest*accBalance()))
  }
}