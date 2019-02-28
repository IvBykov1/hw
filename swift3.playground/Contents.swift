import UIKit
//Homework Assignment #3: Control Flow
var i:Int = 0
func Prime(isPrime number:Int)->Bool{
    if(number>1){
        for i in 2..<number{
            if(number%i==0){
                return false
            }
        }
        return true
    }
    return false
}
repeat{
    i=i+1
    if(Prime(isPrime:i)){
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


