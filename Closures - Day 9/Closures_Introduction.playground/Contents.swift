import Cocoa

func greetUser() -> Void{
    print("Hello User")
}


var greetCopy : () -> Void = greetUser

print(greetCopy())

func getUserData(for id: Int) -> String {
    if id == 10{
        return "Hello Rohit"
    }
    else{
        return "Anonymous"
    }
}

func captainFirstSortedTeam(firstName name1 : String, secondName name2 : String) -> Bool {
    if(name1 == "Rohit"){
        return true
    }
    if(name2 == "Rohit"){
        return false
    }
    
    return name1 < name2
}

var data : (Int) -> String = getUserData

let user = data(10)

let team = ["Tej","Kenny","Rohit"]
let sortedTeam = team.sorted()

let sortedClosureTeam = team.sorted(by: { (name1 : String, name2 : String) -> Bool in
    if(name1 == "Rohit"){
        return true
    } else if (name2 == "Rohit"){
        return false
    }
    
    return name1 < name2
})

print(sortedTeam)

print(sortedClosureTeam)

