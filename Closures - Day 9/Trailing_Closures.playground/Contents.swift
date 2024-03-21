import Cocoa

let team = ["Rohit","Kenny","Tej"]

let sortedTeamDefault = team.sorted()

let sortedTeamClosure = team.sorted { name1, name2 in
    if name1 == "Rohit"{
        return true
    } else if name2 == "Rohit" {
        return false
    }
    
    return name1 < name2
}

let sortedTeamShortHandClosure = team.sorted {
    if $0 == "Rohit"{
        return true
    } else if $1 == "Rohit"{
        return false
    }
    
    return $0 < $1
}

let tOnly = team.filter { a in
    a.hasPrefix("R")
}

let upperCaseTeam = team.map {
    $0.uppercased()
}

print(sortedTeamDefault)

print(sortedTeamClosure)

print(sortedTeamShortHandClosure)

print(tOnly)

print(upperCaseTeam)
