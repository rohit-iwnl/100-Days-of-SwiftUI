import Cocoa

struct Person{
    let name : String
    let college : String
    let course : String
    
    func printSummary() -> Void{
        print("Name : \(name) \nCollege : \(college)\nCourse : \(course)")
    }
}

struct Employee{
    var name : String
    var vacationRemaining : Int
    
    mutating func makeEmployee(name : String, vacationRemaining : Int) {
        self.name = name
        self.vacationRemaining = vacationRemaining
    }
    
    mutating func takeVacation(days : Int) -> Void{
        if vacationRemaining > days{
            vacationRemaining -= days
            print("Leave Granted for \(days) days")
            print("Remaining leaves : \(vacationRemaining)")
        } else {
            print("Leave Not Granted")
        }
    }
}

let rohit = Person(name: "Rohit", college: "ASU", course: "MSCS")

print(rohit)

print(rohit.college)

var rohit_emp = Employee(name: "Rohit", vacationRemaining: 10)
rohit_emp.makeEmployee(name: "Hello", vacationRemaining: 6)

rohit_emp.takeVacation(days: 5)

print(rohit_emp.vacationRemaining)
