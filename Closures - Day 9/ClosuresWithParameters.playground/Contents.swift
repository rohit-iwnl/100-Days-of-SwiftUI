import Cocoa

func doSomeWork(first: () -> Void, second: () -> Void, third: () -> Void){
    print("About to do the first work")
    first()
    print("About to do the second work")
    second()
    print("About to do the third work")
    third()
    print("DONE")
}

let work: () = doSomeWork{
    print("First Work done")
} second: {
    print("Second work done")
} third: {
    print("Third work done")
}

print(work)


