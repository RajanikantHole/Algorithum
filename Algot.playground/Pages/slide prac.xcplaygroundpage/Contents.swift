func logestSubStringCountNonRepeating(s: String)  {
    
    
   let  charCnt  = Array(s)
    
    var setChatr = Set<Character>()
    
    
    var left = 0
    
     var maxLenght = 0
    for right in 0 ..< charCnt.count {
        
        while setChatr.contains(charCnt[right]) {
            setChatr.remove(charCnt[left])
            left = left + 1
        }
        
        
        setChatr.insert(charCnt[right])
        
        if right - left + 1 > maxLenght {
            maxLenght = right - left + 1

           // longestSubstring = String(characters[left...right])
        }
        
        //maxLenght = max(maxLenght, right - left + 1)
        
        
    }
    
    
   print("max\(maxLenght)")
}
         
          
          
logestSubStringCountNonRepeating(s: "pwwkewppppa")
