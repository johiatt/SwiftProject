public class Customer {
  internal var name: String = ""
  init(name: String){
    self.name = name
  }
  public func toString() -> String{
    return name;
  }
}