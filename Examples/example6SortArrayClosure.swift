//Author: Jordan Hiatt 
//Sorting closure example 1
import Foundation;
var intArray = [8,7,6,5,4,3,2,1]

let forwardSortClosure:(Int, Int) -> Bool = {    
  (numberOne:Int, numberTwo:Int) -> Bool in
  if numberOne < numberTwo {				
    return true			
  }
  return false
}

// func forwardSortClosure(numberOne:Int, numberTwo:Int) -> Bool {    
//   if numberOne < numberTwo{				
//     return true			
//   }
//   return false
// }

//Swift's array sort method takes a function or closure as a parameter.
//The function must have two parameters and return a boolean, kind of like
//a comparator implementation in java. The difference being java returns an int
//and this returns a boolean.  
intArray.sort(by: forwardSortClosure)
print(intArray)
//prints [1,2,3,4,5,6,7,8]

//We can accomplish the same with less code
//$0 and $1 are shorthand argument names. Since the closure
//has integer parameters, swift infers the arguments will also be ints.
let reverseSortClosure:(Int,Int) -> Bool = {$0 > $1}
intArray.sort(by: reverseSortClosure)
print(intArray)
//prints [8,7,6,5,4,3,2,1]

//And again with even less code
//Swift infers the parameter and return type from context
intArray.sort(by: {$0 < $1})
print(intArray)
//prints [1,2,3,4,5,6,7,8]

//Ridiculous shorthand 
//The ">" is defined internally as a function that takes two integers
//and returns a boolean. 
intArray.sort(by: >)
print(intArray)
//prints [8,7,6,5,4,3,2,1]]
        
//we can declare a function variable without initializing it
//since it's a var, we can define it multiple times
var combine : (String,String,String) -> String

//You can leave the types out in the closure definition
combine = {
  (a,b,c) -> String in 
  return a + b + c
}
print(combine("welcome","to","swift"))

//swift knows the return is type string, so if we put the concatenation
//right after "in" here, it'll return 
combine = {
  a,b,c -> String in a + b + c
}
print(combine("welcome","to","swift"))

//here we have shorthand arguments with inferred types. 
//the return type is inferred just like in the previous example,
//so in this case no definition is needed
combine = { $0 + $1 + $2}
print(combine("welcome","to","swift"))