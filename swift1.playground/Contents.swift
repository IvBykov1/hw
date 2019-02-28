import UIKit
//Hello everyone, my name is Aleks
//Homework Assignment #1: Variables and Constants
let artist :(String) = "The Beatles"
let song = "Yellow Submarine"
let genre = "Psychedelic rock"
let release = "5 August, 1966"
let length:(Float) = 2.38
let writer = "Lennon–McCartney"
let producer="George Martin"
print ("          ---favorite song---","\n", "'",song,"'", artist,":" ,length,"\n",genre," produced by ",producer,"\n","---",release,writer,"---")
/*
 thank
 you
 for
 your
 attenntion
*/
//------------------------
//Homework Assignment #2: Collections
/*A range is an interval of values. A ranges might be more convenient for loops or other iterations.*/
let range = 1...10
for i in range{
    print(i%2)
}
/*
A tuple is a grouping of ordered values which does not need to be the same type(int,float,string,bool etc. may be in one collection).
An array is mutable collection with one type of elements. Place in memory for array should be allocate in advance. As a consequence array need to have a fixed size.
 */
var tuple=(num: 5, str: "string", char: "c", bool: "true", float: "3.141295")
var pets_arr:[String]=["cat","dog","fish","guinea pig","bird"]
//for i in pets_arr{
//    print(i)
//}
