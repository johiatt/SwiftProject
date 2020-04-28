//Author: Amara Tariq
var list = [1,1,2,3,3,4,5,5,6,7,7,8,9,9]
var uniqueNumbers: [Int] = []

for number in list {
    var new = true

    for otherNumber in uniqueNumbers {
        if number == otherNumber {
            new = false
            break
        }
    }

    if new {
        unique.append(number)
    }
}

for number in unique {
    print(number)
}
     