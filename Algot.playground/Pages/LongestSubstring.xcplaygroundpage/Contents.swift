let s = "geeksforgeeks"
//let s = "geek"
var seen = [Character: Int]() // Store last seen index of characters
var maxLength = 0
var start = 0

for (index, char) in s.enumerated() {
    if let lastSeenIndex = seen[char], lastSeenIndex >= start {
//        print("start1: \(start)")
//        print("lastSeenIndex: \(lastSeenIndex)")
        // If character seen and is in the current window, move start
        start = lastSeenIndex
        //+ 1
      //  print("start2: \(start)")
    }
    // Update max length and last seen position
    maxLength = max(maxLength, index - start )
    seen[char] = index
//    print("index: \(index)")
//    print("seen: \(seen)")
}

//print("start: \(start)")
//print("Result: \(maxLength)")  // Output: 7 for "eksforg"


let tempArr = [1,2,4,5]

let n = tempArr.count + 1

let sum  = n * (n + 1) / 2


let miss = sum - tempArr.reduce(0, +)


let  k = 3
//print(arr) // Output: [5, 6, 7, 1, 2, 3, 4]





var nums = [7, 9, 2, 3, 4, 5, 6, 1, 8]
let n1 = nums.count
let steps = k % nums.count
nums = Array(nums[n1 - steps..<n1] + nums[0..<n1 - steps])


//print(" firstPart \(nums[n1 - steps..<n1])")
//print(" secondPart \( nums[0..<n1 - steps])")
//
//
//
//print(" nums \(nums)")

var first = Int.min
var second = Int.min
var third = Int.min


for i in nums {
    if i > first {
        third = second
        second = first
        first = i
    }
    else if i > second {
        third = second
        second = i
    } else if i > third {
        third = i
    }
}


print(" largest element \(first)")
print(" largest element \(second)")
print(" largest element \(third)")
