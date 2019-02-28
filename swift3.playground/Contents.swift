import UIKit
//Homework Assignment #3: Control Flow
var i:Int = 0
func Prime(n:Int)->Bool{
    if(n>1){
        for i in 2..<n{
            if(n%i==0){
                return false
            }
        }
        return true
    }
    return false
}
repeat{
    i=i+1
    if(Prime(n:i)){
        print("Prime")
    }else{
    if(i%3==0 && i%5==0){
        print("FizzBuzz")}
    else if(i%3==0){
        print("Fizz")}
    else if(i%5==0){
        print("Buzz")}
    else{
        print(i)}}
}while(i<100)

//Prime(n: 2)
