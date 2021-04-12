protocol CanFly {
    // Setting up your behaviors
    func flying()
}

class Bird {
    var isFemail: Bool = true
    
    func layEgg () {
        if isFemail{
            print("Birds family can layout an Egg!!")
        }
    }
}

class Eagle: Bird, CanFly {
    func flying() {
        print("Eagle Can Flying easliy")
    }
}

class Penguine: Bird {
   
    
}

struct AirPlane: CanFly{
    func flying() {
        print("Air Planes can fly with human's eninge designed!!")
    }
}


let myEagle = Eagle()
myEagle.flying()


let myPenguine = Penguine()

let plane = AirPlane()
plane.flying()

