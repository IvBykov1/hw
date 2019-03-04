import UIKit

func timeAdder(value1 : Int,label1 : String,value2 : Int,label2 : String) -> (Int,String){
    var value3:Int=value1+value2
    var label3:String=label1
    return(value3,label3)
}

print(timeAdder(value1: 3, label1: "seconds", value2: 5, label2: "seconds"))
