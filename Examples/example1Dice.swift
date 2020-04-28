// Author: Garrett Hansen, CS354 Spring 2020
class Main {

	struct PairOfDice {
		var die1 = 1
		var die2: Int = 1
	}

	func rollDice() -> Void {
		var dice = PairOfDice()
		dice.die1 = Int.random(in: 1...6)
		dice.die2 = Int.random(in: 1...6)
		print("The value of die 1 is \(dice.die1)")
		print("The value of die 2 is \(dice.die2)")
		compareDice(dice)
	}

	func compareDice(_ dice: PairOfDice) -> Void {
		if (dice.die1 > dice.die2) {
			print("Die 1 has a higher value than Die 2")
		} else if (dice.die1 < dice.die2) {
			print("Die 2 has a higher value than Die 1")
		} else {
			print("Die 1 and Die 2 have equal value!")
		}
	}
}

Main().rollDice()