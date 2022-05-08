import UIKit

var greeting = "Hello, playground"


func sortTwisted37(_ arr: [Int]) -> [Int] {
    
    var newArray:[Int] = []
    
    for number in arr {
        if number == 3 {
            newArray.append(7)
        } else if number == 7 {
            newArray.append(3)
        } else {
            newArray.append(number)
        }
    }
    
    return newArray
}



func returnHighestRepeatingCharacter(_ s: String) -> [String: Int]{
    
    var counts: [String: Int] = [:]
    
    let allCountedCharactersArray = s.reduce(into: [:]) { counts, word in counts[word, default: 0] += 1 }

    let max = allCountedCharactersArray.max(by: { $0.value < $1.value })

    
    if let stringValue = max?.key,
       let value = max?.value {
        let finalAnswer = ["\(stringValue)" : value]
        return finalAnswer
    } else {
        return [:]
    }
}
    
    
func longestRepetition(_ s: String) -> [String: Int] {
    
    // Get the length of the string
    let stringCount = s.count
    var largestRepeatedCharacter = 1
    var currentCount = 1
    var currentCharacter = s[s.index(s.startIndex, offsetBy: 0)]

    // Loop through characters
    for (indexedNumber, element) in s.enumerated() {
        
        if indexedNumber >= stringCount - 1 {
        } else {
            // If the next character matches the current character
            if s[s.index(s.startIndex, offsetBy: indexedNumber)] == s[s.index(s.startIndex, offsetBy: indexedNumber + 1)] {
                // Update count
                currentCount += 1
                // If count is bigger than a previous count, update score
                if currentCount > largestRepeatedCharacter {
                    // Update the largest count with current number count
                    largestRepeatedCharacter = currentCount
                    // Update current character for biggest count
                    currentCharacter = s[s.index(s.startIndex, offsetBy: indexedNumber)]
                }
            
            // If the next character does not match the current character
            } else {
                currentCount = 1
                
            }
        }
        
        
    }
    return [String(currentCharacter):largestRepeatedCharacter]
}


//
//var test2 = longestRepetition("abaaaa")
//var test3 = longestRepetition("aabbbbb")
//var test4 = longestRepetition("aabb")
//var test0 = longestRepetition("bbbaaabaaaa")
//var test00 = longestRepetition("abbbbb")
//var test = longestRepetition("aaaabb")
//var t = longestRepetition("ba")
//var t3 = longestRepetition("aba")
//var t1 = longestRepetition("abcdefg")
//var t2 = longestRepetition("cbdeuuu900")


func pyramid(_ n: Int) -> [[Int]] {
  
    var array: [[Int]] = []
  
    for index in 0..<n {
        var newArray: [Int] = []
        for i in 0..<index + 1 {
            newArray.append(1)
        }
        array.append(newArray)
  }
    return array
}

func inArray(_ a1: [String], _ a2: [String]) -> [String] {
    
    var answerArray: [String] = []
    
    for word in a1 {
        print(word)
        for w in a2 {
            if w.contains(word) {
                if !answerArray.contains(word) {
                    answerArray.append(word)
                }
            }
        }
    }
    return answerArray
}

//
//var a1 = inArray(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"])
//var a2 = inArray(["tarp", "mice", "bull"], ["lively", "alive", "harp", "sharp", "armstrong"])
//var a3 = inArray(["arp", "mice", "bull"] , ["lively", "alive", "harp", "sharp", "armstrong"])


func whatCentury(_ year: String) -> String {

    if let yearNumber = Int(year) {
        
        if yearNumber <= 0 {
            return addCenturyTag(0)
        }
        
        if yearNumber % 100 == 0 {
            return addCenturyTag(yearNumber / 100)
        } else {
            return addCenturyTag((yearNumber / 100) + 1)
        }
        
        
    }
    
    return ""
}

func addCenturyTag(_ year: Int) -> String {
    
    switch year {
    case 0: return "0"
    case 1, 21, 31, 41, 51, 61, 71, 81, 91: return "\(year)st"
    case 2, 22, 32, 42, 52, 62, 72, 82, 92: return "\(year)nd"
    case 3, 23, 33, 43, 53, 63, 73, 83, 93: return "\(year)rd"
    case 4..<21, 24..<31, 34..<41, 44..<51, 54..<61, 64..<71, 74..<81, 83..<91, 94..<101: return "\(year)th"

    default: return "\(year)"
    }
}

//var c1 = whatCentury("1999")
//var c2 = whatCentury("2011")
//var c3 = whatCentury("2154")
//var c4 = whatCentury("2259")
//var c5 = whatCentury("1124")
//var c6 = whatCentury("2000")
//var c7 = whatCentury("800")
//var c8 = whatCentury("84")
//var c9 = whatCentury("8365")

func shiftedDiff(_ s1: String, _ s2: String) -> Int? {
    // Verify the amount of characters in each string are equal if s1.count != s2.count {
    if s1.count != s2.count {
            return 0
        }
        
        let indexCharacter = s1.first
            if let indexCharacterLocation = s2.first(where: { indexCharacter == $0 }) {
              if let i = s2.firstIndex(of: indexCharacterLocation) {
           
                return i.utf16Offset(in: s2)
            }
        }
        
    return 1
}

var t1 = shiftedDiff("coffee","eecoff")
//var t2 = shiftedDiff("eecoff","coffee")
//var t3 = shiftedDiff("isn't","'tisn")
//var t4 = shiftedDiff("Esham","Esham")
//var t5 = shiftedDiff("Esham","Esham")

//func findIt(_ seq: [Int]) -> Int {
//    // count number of integers in sequence
//    let total = seq.count
//
//    // Variables to hold final answer
//    var oddInteger = 0
//
//    // If the seq contains one instance, return that instance
//    if total == 1 {
//        if let first = seq.first {
//            oddInteger = first
//        }
//    } else {
//        let countedSet = NSCountedSet(array: seq)
//        // loop through the sequences
//        for number in countedSet {
//            let countedNumber = countedSet.count(for: number)
//            print("Number: \(number) Count: \(countedNumber)")
//            if countedNumber % 2 == 0 {
//                print("even number: \(number)")
//            } else {
//                print("odd number beofre: \(number)")
//                oddInteger = number as! Int
//                print("Odd Number after: \(oddInteger)")
//            }
//        }
//    }
//  return oddInteger
//}

func findIt(_ seq: [Int]) -> Int {
    return seq.reduce(0, ^)
}

//var f1 = findIt([7])
//var f2 = findIt([0])
//var f3 = findIt([1,1,2])
//var f4 = findIt([20, 1, -1, 2, -2, 3, 3, 5, 5, 1, 2, 4, 20, 4, -1, -2, 5])


func beggars(_ values: [Int], _ n: Int) -> [Int] {
  
    // Make sure input is not zero or less beggars
    guard n > 0 else { return [] }
    
    // create empty answer array
    var returnArray:[Int] = Array(repeating: 0, count: n)

    values.enumerated().forEach { index, value in
        returnArray[index % n] += value
    }
    
  return returnArray
}

var b1 = beggars([1,2,3,4,5], 3)
var b2 = beggars([1,2,3,4,5], 2)
var b3 = beggars([1,2,3,4,5], 0)




//func specialNumber(_ number: Int) -> String {
//
//    guard number > 0 else { return "Not a special number" }
//
//    var specialNumber = ""
//    // create string to loop through numbers more easily
//    var numberString = String(number)
//    // loop through numbers
//    let result = numberString.map({ character -> String in
//        print(character.wholeNumberValue)
//        if let numberCharacter = character.wholeNumberValue {
//            if numberCharacter < 0 || numberCharacter > 5 {
//                return "NOT!!"
//            }
//        }
//        return "Special!!"
//    })
//    return result
//}

func specialNumber(_ number: Int) -> String {
    
    guard number > 0 else { return "NOT!!" }
    // create string to loop through numbers more easily
    let numberString = String(number)
    
    return numberString.reduce(String(), { finalAnswer, number -> String in
        if number.wholeNumberValue ?? 0 > 5 {
            return "NOT!!"
            
        } else if finalAnswer == "NOT!!" {
            return "NOT!!"
        } else {
            return "Special!"
        }
    })
}

//var guard1 = specialNumber(-1)
//var s1 = specialNumber(2)
//var s2 = specialNumber(3)
//var s3 = specialNumber(11)
//var s4 = specialNumber(55)
//var s5 = specialNumber(25432)
//
//
//var s6 = specialNumber(2789)
//var s7 = specialNumber(6)
//var s8 = specialNumber(9)
//var s9 = specialNumber(26)
//var s10 = specialNumber(92)

func duplicateEncode(_ word: String) -> String {
    
    let lowercased = word.lowercased()
    
    let newString = lowercased.map({ character -> String in
        print(character)
        if word.filter({ $0 == character }).count > 1 {
            return ")"
        } else {
            return "("
        }
    }).joined()
    
    return newString
}

//var d1 = duplicateEncode("din")
//var d2 = duplicateEncode("recede")
//var d3 = duplicateEncode("Success")
//var d4 = duplicateEncode("(( @")
//var d5 = duplicateEncode("(  @!")
//var d6 = duplicateEncode("dinrecedesuccesscodewarriorsupralpsarian")

func expandedForm(_ num: Int) -> String {
    var stringNumberArray = String(num).map({ $0 })
    var answerString:String = ""

    for index in 0..<stringNumberArray.count {
        
        if stringNumberArray[index] == "0" {
            print("Dont do it")
        } else {
            answerString.append(stringNumberArray[index])
            for i in 0..<( stringNumberArray.count - index - 1 ) {
                answerString.append("0")
            }
            
            if index == stringNumberArray.count - 1 {
            } else {
                answerString.append(" + ")
            }
        }
        
    }
    
  // Do something
  return answerString
}

//var e1 = expandedForm(12)
//var e2 = expandedForm(42)
//var e3 = expandedForm(70304)



extension Array {
    var combinations: [[Element]] {
        if count == 0 {
            return [self]
        }
        else {
            let tail = Array(self[1..<endIndex])
            let head = self[0]
            let first = tail.combinations
            let rest = first.map { $0 + [head] }
            return first + rest
        }
    }
}


func chooseBestSum(_ t: Int, _ k: Int, _ ls: [Int]) -> Int {
    // get all possible combinations from the array of towns with the number they would like to visit
    let combinations = ls.combinations.filter { $0.count == k }
    
    let possibleRoutes = combinations.filter { $0.reduce(0,+) <= t }

    let reducedArrays = possibleRoutes.map { array in
        array.reduce(0, +)
    }
    let highestArray = reducedArrays.max()
    guard let number = highestArray else { return -1 }
    return number
}


//var cbs1 = chooseBestSum(163, 3, [50, 55, 55, 56, 57, 58])

func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
    
    var sortableArray = array
    var sortedArray = sortableArray
        .sorted(by: {$0 < $1 })
        .filter({ $0 > 0 })
    
    let answer = sortedArray.prefix(2).reduce(0, +)

  return answer
}

//var sum1 = sumOfTwoSmallestIntegersIn([19, 5, 42, 2, 77, -1, 0])


func printerError(_ s: String) -> String {
    
    let countPrinterErrors = s.filter({ !("a"..."m").contains(String($0)) }).count
    
    return "\(countPrinterErrors)/\(s.count)"
}

//var print1 = printerError("aaabbbbhaijjjm")
//var print2 = printerError("aaaxbbbbyyhwawiwjjjwwm")

func spinWords(in sentence: String) -> String {
    // Your code goes here
    var wordsArray = sentence.components(separatedBy: " ")
    
  
        var answerString = ""
        
    wordsArray.enumerated().map({ index, element in
        
            if element.count > 2 {
                if index + 1 == wordsArray.count {
                    answerString.append(element.reversed() + "")
                } else {
                    answerString.append("\(element)".reversed() + " ")
                }
                
            } else {
                if index + 1 == wordsArray.count {
                    answerString.append(element)
                } else {
                    answerString.append("\(element)" + " ")
                }
                
            }
        })
        wordsArray.map({ id in 0..<sentence.count })
        return answerString

    
   
}

//var spin1 = spinWords(in: "Hey fellow warriors")
//var spin2 = spinWords(in: "Welcome")
//var spin3 = spinWords(in: "This sentence is a sentence")


let vowelSet:[Character] = ["a", "e", "i", "o", "u", "y"]

func findVowels(string: String) -> [Int] {
    var returnedArray:[Int] = []
    let lowercasedString = string.lowercased()
    
    lowercasedString.enumerated().map { index, character in

        if vowelSet.contains(character) {
            returnedArray.append(index + 1)
        }
        
    }
    return returnedArray
}


let test1 = findVowels(string: "super")
let test2 = findVowels(string: "Wrath")
let test3 = findVowels(string: "common")
let test4 = findVowels(string: "012345")
let test5 = findVowels(string: "COMMON")
let test6 = findVowels(string: "ridiculous")


func solution(for number: Int) -> Int {
    let rangeOfThrees = Array(stride(from: 0, through: number - 1, by: 3)).reduce(0,+)
    let rangeOfFives = Array(stride(from: 0, through: number - 1, by: 5)).reduce(0,+)
    return rangeOfThrees + rangeOfFives
}

let solutionTest1 = solution(for: 10)
let solutionTest2 = solution(for: 12)


func findOutlier(_ array: [Int]) -> Int {
    
    let arraySet:Set<Int> = Set(array)
    
    let evenNumbers = arraySet.filter { $0.isMultiple(of: 2) }
    let oddNumbers = arraySet.filter { !$0.isMultiple(of: 2) }
    
    if evenNumbers.count == 1 {
        return evenNumbers.reduce(0,+)
    } else {
        return oddNumbers.reduce(0,+)
    }
}

let findOutlier1 = findOutlier([2, 4, 0, 100, 4, 11, 2602, 36])
let findOutlier2 = findOutlier([160, 3, 1719, 19, 11, 13, -21])

let findOutlier3 = findOutlier([161, 3, 1719, 19, 11, 13, -21, 5, 7, 91293, 9, 23, 11111, 11, 1, 2])







func convertSecondsToFormat(time: Int) -> String {
    let IntHours = time / 3600
    let IntMinutes = ((time % 3600) / 60)
    let IntSeconds = time % 60
    
    var hours = String(IntHours)
    var minutes = String(IntMinutes)
    var seconds = String(IntSeconds)
    
    if IntHours < 10 {
        hours = "0" + hours
    }
    
    if IntMinutes < 10 {
        minutes = "0" + minutes
    }
    
    if IntSeconds < 10 {
        seconds = "0" + seconds
    }
    
    return "\(hours)|\(minutes)|\(seconds)"
}



func convertTimeToSeconds(array: [Int]) -> Int {
    
    var mutableArray = array
    
    mutableArray.enumerated().map({ index, time in
        if index == 0 {
            mutableArray[index] *= 3600
        } else if index == 1 {
            mutableArray[index] *= 60
        } else {
            mutableArray[index] *= 1
        }
    })
    
    return mutableArray.reduce(0, +)
}

func createRangeTuple(string: String) -> [(stringTime: String, time: Int)] {
    // Seperate string of times in array of individual times
    let arrayStrings = string
        .components(separatedBy: ",")

    let arrayNumbers = arrayStrings
        .map{ $0.components(separatedBy: "|") }
        .map({ $0.enumerated().map({ Int($0.element) ?? 0 })})
        .map({ convertTimeToSeconds(array: $0)})
    
    
    var tupleTimes:[(stringTime: String, time: Int)] = []
    
    arrayStrings.enumerated().map({ index, value in
        tupleTimes.append((stringTime: arrayStrings[index], time: arrayNumbers[index]))
    })
    
    tupleTimes.sort(by: { $0.time > $1.time })
    
    return tupleTimes

}

let rangeTupleTest1 = createRangeTuple(string: "01|15|59,01|47|16,01|17|20,01|32|34,02|17|17")
rangeTupleTest1.first?.stringTime
rangeTupleTest1.first?.time

// Statistics for an Athletic Association
func athleticStatistics(string: String) -> String {
   
    let statistics = createRangeTuple(string: string)
    var range = ""
    var median = ""
    var average = ""
    
    // MARK: RANGE
    // get the biggest array
    if let highestTime = statistics.first?.time,
       let lowestTime = statistics.last?.time {
        range = convertSecondsToFormat(time: highestTime - lowestTime)
    }
    
    // MARK: Average
    let averageFromArray = statistics.map({ $0.time }).reduce(0,+) / statistics.count
    average = convertSecondsToFormat(time: averageFromArray)
    
    // MARK: MEDIAN
    let index = (statistics.count > 1 ? statistics.count - 1 : statistics.count) / 2
    if statistics.count.isMultiple(of: 2) {
        let averageOfBothIndexes = (statistics[index].time + statistics[index + 1].time) / 2
        median = convertSecondsToFormat(time: averageOfBothIndexes)
        
    } else {
        median = convertSecondsToFormat(time: statistics[index].time)
    }
    
    return "Range: \(range) Average: \(average) Median: \(median)"
}


let failedathletic = athleticStatistics(string: "01|15|59,01|47|16,01|17|20,01|32|34,02|17|17") // Range: 01|01|18 Average: 01|38|05 Median: 01|32|34
let athleticStatTest1 = athleticStatistics(string: "01|15|59,01|47|16,01|17|20,01|32|34,02|17|17") // "Range: 01|01|18 Average: 01|38|05 Median: 01|32|34"
let athleticStatTest2 = athleticStatistics(string: "01|15|59,01|47|16,01|17|20,01|32|34,02|17|17") // "Range: 00|31|17 Average: 02|26|18 Median: 02|22|00"


