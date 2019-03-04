import UIKit

//------------------------
//Homework Assignment #2: Collections
/*A range is an interval of values. A ranges might be more convenient for loops or other iterations.*/
let range = 1...10
for i in range{
    print(i%2)
}
/*
 A tuple is a grouping of ordered values which does not need to be the same type(int,float,string,bool etc. may be in one collection).
 An array is mutable collection with one type of elements. Place in memory for array should be allocate in advance. As a consequence array needs to have a fixed size.
 */
var tuple=(num: 5, str: "string", char: "c", bool: "true", float: "3.141295")
var pets_arr:[String]=["cat","dog","fish","guinea pig","bird"]
for i in pets_arr{
    print(i)
}
