//Author: Amara Tariq
var list = [2,4,6,8,10]
var x = 8
var xAppears = false

for numbers in list{
print(numbers)
}

for numbers in list {
    if numbers == x {
        xAppears = true
    }
}

if xAppears {
    print("\nFound x in this array")
} else {
    print("\nX does not exist in this array")
}