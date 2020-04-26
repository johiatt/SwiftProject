//does not accrue
public class SavingsAccount : Account {
  //private 
  private var interest  = 0.0;
  //overriding instance method must be as accessible as the declaration it overrides
  override init(number:Int, balance: Double, customer:Customer){
    // self.number = number
    // self.balance = balance
    super.init(number: number, balance:balance, customer:customer)
  }
  public override func accrue(rate: Double) ->(){
    self.interest += balance*rate;
    self.balance += balance*rate;
  }
}