import Cocoa

struct Car {
    let modle: String
    let numberOfSeats: Int
    private(set) var currentGear = 1
    
    mutating func shiftUp(){
        if  currentGear < 10 {
            currentGear += 1
            print("Shifted up to \(currentGear)")
        } else {
            print("Cannot shift any higher")
        }
    }
    
    mutating func shiftDown(){
        if  currentGear > 1 {
            currentGear -= 1
            print("Shifted down to \(currentGear)")
        } else {
            print("connot shift any lower")
        }
    }
    
}
    
var myCar = Car(modle: "chevy", numberOfSeats: 5)

//print(myCar.currentGear)
myCar.shiftUp()
myCar.shiftDown()
