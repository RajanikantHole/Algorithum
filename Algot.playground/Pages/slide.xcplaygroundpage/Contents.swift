func longestSubstringWithoutRepeatingCharacters(_ s: String) -> (length: Int, substring: String) {
    var left = 0
    var maxLength = 0
    var charSet = Set<Character>()
    let characters = Array(s)
    var longestSubstring = ""

    for right in 0..<characters.count {
        while charSet.contains(characters[right]) {
            charSet.remove(characters[left])
            left += 1
        }
        charSet.insert(characters[right])
        
        // Check if the new substring is the longest
        if right - left + 1 > maxLength {
            maxLength = right - left + 1

            longestSubstring = String(characters[left...right])
        }
    }
    
    return (maxLength, longestSubstring)
}

// Example usage
let result = longestSubstringWithoutRepeatingCharacters("pwwkewp")
//print("Length: \(result.length), Substring: \(result.substring)")
