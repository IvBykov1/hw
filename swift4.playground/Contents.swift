import UIKit

func inputValidation(_ value:Int, _ label:String)->Bool{
    switch label {
    case "seconds","minutes","hours","days":
        if(value > 1){
            return true
        }
    case "second","minute","hour","day":
        if(value<=1 && value>=0){
            return true
        }
    default:
        return false
    }
    return false
}
func totalSec(_ value :Int,_ label: String)->Int{
    switch label {
    case "seconds","second":
        return value
    case "minutes","minute":
        return value*60
    case "hours","hour":
        return value*3600
    case "days","day":
        return value*3600*24
    default:
       return 0
    }
}
func largestLabel(_ value:Int)->(Int,String){
    var answer :(Int,String)=(0,"")
    if(value%(24*3600)==0){
        if(value/(24*3600)>1){
            answer=(value/(24*3600),"days")
        }else{
            answer=(value/(24*3600),"day")
        }
    }else
    if(value%3600==0){
        if(value/(3600)>1){
            answer=(value/(3600),"hours")
        }else{
            answer=(value/(3600),"hour")
        }
    }else
    if(value%60==0){
        if(value/60>1){
            answer=(value/60,"minutes")
        }else{
            answer=(value/60,"minute")
        }
    }else
    if(value>1){
                answer=(value,"seconds")
            }else{
                answer=(value,"second")
            }
    return answer
}
func timeAdder(_ value1 : Int,_ label1 : String,_ value2 : Int,_ label2 : String) -> (Int,String)  {
   
    if(inputValidation(value1, label1) && inputValidation(value2, label2)){
        let value3:Int = totalSec(value1, label1)+totalSec(value2, label2)
        return(largestLabel(value3))
    }else {return(404,"Error")}
}

print(timeAdder(3600,"seconds",120,"minutes"))
print(timeAdder(360,"seconds",1,"hour"))
print(timeAdder(1,"hour",7,"hours"))
print(timeAdder(36000,"seconds",120,"minutes"))
print(timeAdder(59,"minutes",1,"minute"))
print(timeAdder(0,"second",1,"second"))
print(timeAdder(22,"hours",2,"hours"))
print(timeAdder(864000,"seconds",1441,"minutes"))
print(timeAdder(1,"minute",3,"minutes"))
print(timeAdder(5,"days",25,"hours"))
print(timeAdder(1,"minute",240,"seconds"))
print(timeAdder(5,"hour",5,"minutes")) // This is impossible because "hour" is singular and 5 is plural

