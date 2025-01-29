func isPalindrome(_ string: String) -> Bool {
    let filteredString = string.lowercased().filter { $0.isLetter }
    return filteredString == String(filteredString.reversed())
}

func temp(_ str: String) -> Bool {
    let op1 = str.lowercased().filter{ $0.isLetter }
    return op1 == String(op1.reversed())
}
// Test Cases
print(temp("madam")) // true
print(isPalindrome("racecar")) // true
print(isPalindrome("hello")) // false
print(isPalindrome("A man, a plan, a canal: Panama")) // true

func removeDuplicates(from str: String) -> String {
    
    var sett: Set<Character> = []
    
    return str.filter { chr in
        
        if sett.contains(chr) {
            return false
        } else {
            sett.insert(chr)
            return true
        }
    }

}

// Test Cases
print(removeDuplicates(from: "swiss")) // "swi"
print(removeDuplicates(from: "hello")) // "helo"
print(removeDuplicates(from: "programming")) // "progamin"
