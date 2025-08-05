func longestCommonPrefix(_ strs: [String]) -> String {
    guard var prefix = strs.first else {
        return ""
    }

    for str in strs.dropFirst() {
        

        while !str.hasPrefix(prefix) {
          //  print("prefix  \(prefix)")
           // print("str \(str)")
            
            prefix = String(prefix.dropLast())
           // print("next prefix  \(prefix)")
            if prefix.isEmpty {
                return ""
            }
        }
    }

    return prefix
}

let words = ["flower", "falow", "flight"]
//print(longestCommonPrefix(words))  // Output: "fl"
