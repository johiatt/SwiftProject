public class SavingsAccount : Account {
  private var interest  = 0.0;
  override init(number:Int, balance: Double, customer:Customer){
    super.init(number: number, balance:balance, customer:customer)

  }
  public override func accrue(rate: Double) ->(){
    interest += getBalance()*rate
    deposit(amount:(interest*getBalance()))
  }
  public func getInterest() -> Double {
    return interest;
  }
}