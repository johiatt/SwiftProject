//Author: Jordan Hiatt 
//Sorting closure example 1
import Foundation;
var intArray = [8,7,6,5,4,3,2,1]
let forwardSortClosure:(Int, Int) -> Bool = {    
  (numberOne:Int, numberTwo:Int) -> Bool in
  if numberOne < numberTwo{				
    return true			
  }
  return false
}
intArray.sort(by: forwardSortClosure)
print(intArray)
//prints [1,2,3,4,5,6,7,8]

//We can accomplish the same with less code
//$0 and $1 are shorthand argument names
let reverseSortClosure:(Int,Int) -> Bool = {$0 > $1}
intArray.sort(by: reverseSortClosure)
print(intArray)
//prints [8,7,6,5,4,3,2,1]

//And again with even less code
//Swift infers the parameter and return type from context
intArray.sort(by: {$0 < $1})
print(intArray)
//prints [1,2,3,4,5,6,7,8]
        