//Author: Amara Tariq
var list = [5,4,3,2,1]

print("Original")
for numbers in list{
print(numbers)
}

var index = 0
var tail = list.count - 1

while index < tail{
    //swaps first element with last element
    var temp = list[index]
    list[index] = list[tail]
    list[tail] = temp

    //moves in one from the front, one from the back
    index += 1
    tail -= 1
}

print("\nReversed")
for numbers in list{
print(numbers)
}