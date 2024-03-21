/*https://www.hackingwithswift.com/quick-start/beginners/checkpoint-5 */

import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

/*
 Your job is to:

     Filter out any numbers that are even
     Sort the array in ascending order
     Map them to strings in the format “7 is a lucky number”
     Print the resulting array, one item per line

 So, your output should be as follows:
 7 is a lucky number
 15 is a lucky number
 21 is a lucky number
 31 is a lucky number
 33 is a lucky number
 49 is a lucky number
 */
var evenLuckyNumbers = luckyNumbers.filter { number in
    return number%2 == 1
}


evenLuckyNumbers = evenLuckyNumbers.sorted {
    return $0 < $1
}

let result = evenLuckyNumbers.map{ (number : Int) -> String in
    return "\(number) is a lucky number"
}

print(evenLuckyNumbers)
print(result)
