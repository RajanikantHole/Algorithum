let res = "abababa"
let s1 = "aba"
let s2 = "a"


extension String {
    
    func indexAt(index: Int) -> Character? {
        guard let stringIndex = self.index(self.startIndex, offsetBy: index, limitedBy: self.endIndex) else {
                  return nil // Return nil if the index is out of bounds
              }
              return self[stringIndex]
    }
}
for (i, char) in res.enumerated() {
    
    if res.indexAt(index: i) == s1.indexAt(index: 0) {
        
        for (j, char2) in s1.enumerated() {
            if res.indexAt(index: j) != s1.indexAt(index: 0) {
                
            }
        }
        print(" i \(i)")
    }
    print(" i \(i)")
}
