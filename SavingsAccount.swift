//does not accrue
public class SavingsAccount : Account {
  //private 
  private var interest  = 0.0;
  private var balance: Double
  override init(number:Int, balance: Double, customer:Customer){
    //initialize variables you want to use in subclass functions BEFORE super.init call
    self.balance = balance
    super.init(number: number, balance:balance, customer:customer)
        
  }
  public override func accrue(rate: Double) ->(){
    //if you want to USE the inherited variable, it needs to be declared 
    //and initialized in the constructor. 
    interest += balance*rate
    balance += balance*rate

    // interest += balance*rate
    // balance += balance*rate
  }
}