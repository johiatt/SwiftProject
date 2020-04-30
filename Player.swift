import Foundation
//10 weeks to beat cryptocurrency
//hire lobbyists
//predatory housing loan program
//increase overdraft charges
//push worthless upgrades
public class Player {
  private var money = 0
  private var banks = [Bank]()
  //last one week
  private var predatoryLoans = false
  //lobbyists 
  private var lobbyists = 0
  //every account has a chance to overdraft
  private var overdraftCharge = 1
  //increase max possible accounts added per day
  private var advertisements = 0

  public func toggleLoans() -> (){
    predatoryLoans = !predatoryLoans
  }

  public func hasLoans() -> Bool{
    return predatoryLoans
  }

  public func bankAccrue() -> (){
    for bank in banks{
      bank.accrue()
    }
  }
  public func add(bank: Bank ) -> () {
      banks.append(bank)
  }
  public func getBank() -> [Bank]{
    return banks
  }
}