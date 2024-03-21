import Cocoa

func checkSqrt(for number : Double) throws -> Double {
    if(number<1){
        throw IntegerError.ZeroOrNegative
    } else if(number>10000){
        throw IntegerError.GreaterThan10000
    }
    
    return sqrt(Double(number))
}

do{
    let result = try checkSqrt(for: 16)
    print("The square root of a number is \(result)")
} catch IntegerError.ZeroOrNegative {
    print("Negative or Zero Number entered")
} catch IntegerError.GreaterThan10000 {
    print("Greater than 10k")
} catch {
    print("Unexpected Error : \(error.localizedDescription)")
}

enum IntegerError : Error {
    case ZeroOrNegative
    case GreaterThan10000
}
