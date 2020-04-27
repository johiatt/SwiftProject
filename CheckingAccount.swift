//does not accrue
public class CheckingAccount : Account {
  private var interest  = 0.0;
  override init(number:Int, balance: Double, customer:Customer){
    super.init(number: number, balance:balance, customer:customer)
  }

}