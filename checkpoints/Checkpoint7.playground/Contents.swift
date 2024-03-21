import Cocoa

class Animal {
    var legs : Int
    
    init(legs : Int){
        self.legs = legs
    }
}

class Dog : Animal{
    var breed : String
    
    init(legs : Int,breed: String) {
        self.breed = breed
        super.init(legs: legs)
    }
    
    func speak(){
        print("Bark bark")
    }
}

class Cat : Animal{
    var isTame : Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak(){
        print("Meow Meow")
    }
}

class Corgi : Dog{
    var breedName = "Corgi"
    
    init(legs: Int){
        super.init(legs: legs, breed: breedName)
    }
    
    override func speak(){
        print("Corgi barking")
    }
}

class Poodle : Dog{
    var breedName = "Poodle"
    
    init(legs: Int){
        super.init(legs: legs, breed: breedName)
    }
    
    override func speak(){
        print("Poodle barking")
    }
}

let poodle = Poodle(legs: 4)
poodle.speak()

let corgi = Corgi(legs: 4)
corgi.speak()

let dog = Dog(legs: 4, breed: "Husky")
print(dog.breed)
dog.speak()


