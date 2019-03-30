import UIKit

class Vehicle{
    var Make:String
    var Model:String
    var Year:Int
    var Weight:Int
    var NeedsMaintenance = false
    var TripsSinceMaintenance:Int=0
    init(make:String,model:String,year:Int,weight:Int) {
        self.Make=make
        self.Model=model
        self.Year=year
        self.Weight=weight
    }
    func setMake(make:String){self.Make=make}
    func setModel(model:String){self.Model=model}
    func setYear(year:Int){self.Year=year}
    func setWeight(weight:Int){self.Weight=weight}
    func Repair(){
        NeedsMaintenance=false;
        TripsSinceMaintenance=0;
        print("successful maintenence")
    }
}
class Cars:Vehicle{
    var isDriving:Bool=false
    override init(make: String, model: String, year: Int, weight: Int) {
        super.init(make: make, model: model, year: year, weight: weight)
    }
    func Drive(){
        if(!super.NeedsMaintenance){isDriving=true}
        else {print("oh...your car is broken")}
    }
    func Stop(){
        if(isDriving){
            isDriving=false;
            super.TripsSinceMaintenance+=1;
            if(super.TripsSinceMaintenance>100){super.NeedsMaintenance=true}
            }
        else {print("opps...it seems your engine has stopped already")}
        }
}
class Planes:Vehicle{
    var isFlying:Bool = false
    override init(make: String, model: String, year: Int, weight: Int) {
        super.init(make: make, model: model, year: year, weight: weight)
    }
    func Flying()->Bool{
        if(super.NeedsMaintenance){
            print("ERROR: the plane can't fly until it's repaired")
            return false
        }
        else{ isFlying=true; return true;}
    }
    func Landing(){
        if(isFlying){
            isFlying=false;
            super.TripsSinceMaintenance+=1;
            if(super.TripsSinceMaintenance>100){super.NeedsMaintenance=true}
        }
        else{print("your plane has landed already")}
    }
}
//------ test ------cars--------
print("*** test cars*** \n")
var ford:Cars=Cars(make:"ford",model:"explorer",year:1995,weight:2100)
var opel:Cars=Cars(make:"opel",model:"astra",year:1999,weight:1450)
var bmw:Cars=Cars(make:"bmw",model:"e39",year:2001,weight:1800)
var vw:Cars=Cars(make:"volkswagen",model:"transporter",year:2008,weight:1580)
var carsArr:[Cars]=[ford,opel,bmw,vw]
for i in carsArr{
    print(i.Make,i.Model,i.Year,i.Weight,i.NeedsMaintenance,i.TripsSinceMaintenance,i.isDriving," -- start of exploitation")
    var j=0
    while j<101 {
        i.Drive()
        i.Stop()
        j+=1
    }
    print(i.Make,i.Model,i.Year,i.Weight,i.NeedsMaintenance,i.TripsSinceMaintenance,i.isDriving)
    i.Drive()
    i.Stop()
    i.Repair()
    i.Drive()
    print(i.Make,i.Model,i.Year,i.Weight,i.NeedsMaintenance,i.TripsSinceMaintenance,i.isDriving,"\n")
}
// ---------test planes----------
print("\n*** test planes*** \n")
var plane1:Planes=Planes(make: "plane", model: "one", year: 2015, weight: 30000)
var plane2:Planes=Planes(make: "plane", model: "two", year: 2019, weight: 70000)
var plane3:Planes=Planes(make: "plane", model: "three", year: 2017, weight: 25000)
var plane4:Planes=Planes(make: "plane", model: "four", year: 2014, weight: 65000)
var planesArr:[Planes]=[plane1,plane2,plane3,plane4]
for i in planesArr{
    print(i.Make,i.Model,i.Year,i.Weight,i.NeedsMaintenance,i.TripsSinceMaintenance,i.isFlying," -- start of exploitation")
    var j=0
    while j<101 {
        i.Flying()
        i.Landing()
        j+=1
    }
    print(i.Make,i.Model,i.Year,i.Weight,i.NeedsMaintenance,i.TripsSinceMaintenance,i.isFlying)
    i.Flying()
    i.Landing()
    i.Repair()
    i.Flying()
    print(i.Make,i.Model,i.Year,i.Weight,i.NeedsMaintenance,i.TripsSinceMaintenance,i.isFlying,"\n")
}
