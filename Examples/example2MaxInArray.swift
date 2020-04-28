//Author: Amara Tariq

var list = [23, 56, 25, 99, 48]
//sets maxval to the first element in the array
var maxVal = list[0] 

//printing array 
print("Array")
for numbers in list{
print(numbers)
}

//goes through for each number in the array 'list' 
//runs the if statement check
for number in list {  
    if maxVal < number {
        maxVal = number
    }
}

print("\nMax Value in the Array")
print(maxVal)