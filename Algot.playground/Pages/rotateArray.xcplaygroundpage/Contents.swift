// Rotate array till nth index

let arr = [1,2,3,4,5]

let index = 2

var arrRes = [Int]()

for i in index ..< arr.count {
    arrRes.append(arr[i])
}

for i in 0 ..< index{
    arrRes.append(arr[i])
}


// print(" arrRes \(arrRes)")
//  arrRes [3, 4, 5, 1, 2]

func longestCommonPrefix(_ strs: [String]) -> String {
    guard let first = strs.first else { return "" }
    var prefix = first

    //print(" prefix \(prefix)")
    for str in strs.dropFirst() {
        
        print(" str \(str)")
        print(" prefix \(prefix)")
        print(" str.hasPrefix(prefix) \(str.hasPrefix(prefix))")
        while !str.hasPrefix(prefix) {
            prefix = String(prefix.dropLast())
            
            print(" prefix \(prefix)")
            
            if prefix.isEmpty { return "" }
        }
    }

    return prefix
}

//print(" Result \(longestCommonPrefix(["abcd", "a", "a"]))")
