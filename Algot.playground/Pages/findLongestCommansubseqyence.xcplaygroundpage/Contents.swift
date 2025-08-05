let string1 = "abcdef"
let string2 = "c"


func findLongestCommansubseqyence(char1: [Character], char2: [Character], index1: Int, index2: Int) -> Int {
    
    if index1 == char1.count || index2 == char2.count {
        return 0
    }
    
    if char1[index1] ==  char2[index2] {
        return 1 + findLongestCommansubseqyence(char1: char1, char2: char2, index1: index1 + 1, index2: index2 + 1)
    }
    
    return max(findLongestCommansubseqyence(char1: char1, char2: char2, index1: index1, index2: index2 + 1), findLongestCommansubseqyence(char1: char1, char2: char2, index1: index1 + 1, index2: index2))
}

let strArr1 = Array(string1)
let strArr2 = Array(string2)

let res = findLongestCommansubseqyence(char1: strArr1, char2: strArr2, index1: 0, index2: 0)
//print(" rfindLongestCommansubseqyencees \(res)")

