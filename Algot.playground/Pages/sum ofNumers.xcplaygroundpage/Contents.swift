

var tempRes = [[Int]]()
let teageSum = 10
func rec(curr: [Int], remain: Int, start: Int) {
    
    if remain == 0 {
        print("curr \(curr)")
        tempRes.append(curr)
        return
    }
    
    print("remain \(remain)  start \(start) curr \(curr)")
    for i in start ... teageSum {
        
        if i > remain {
            break
        }
        
        let tempRem = remain - i
        rec(curr: curr + [i], remain: tempRem, start: i + 1)
    }
}


 rec(curr: [], remain: teageSum, start: 1)

print(" tempRes \(tempRes)")
//
//func findCombinationsThatSumToTarget(_ targetSum: Int) -> [[Int]] {
//    var result = [[Int]]()
//    
//    func findCombinations(_ current: [Int], _ remaining: Int, _ start: Int) {
//        if remaining == 0 {
//            print("current \(current)")
//            result.append(current)
//            return
//        }
//        
//        for i in start...targetSum {
//            if i > remaining { break }
//            print("targetSum \(current + [i])")
//            findCombinations(current + [i], remaining - i, i + 1)
//        }
//    }
//    
//    findCombinations([], targetSum, 1)
//    return result
//}
//
//// Example usage
//let targetSum = 10
//let combinations = findCombinationsThatSumToTarget(targetSum)
//print(combinations)
