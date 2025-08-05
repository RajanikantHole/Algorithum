
let stringPal = "ac22caTP1234567654321"

var left = 0
var right  = stringPal.count - 1

let arrStringPal = Array(stringPal)

func checkPalioDrom (arrStringPal: [Character], left: Int, right: Int) -> Bool {
    
    var left =  left
    var right = right
    while left < right {
        
        if arrStringPal[left] !=  arrStringPal[right] {
            return false
        }
        left = left + 1
        right = right - 1
    }
    
    return true
}


let chelPa = checkPalioDrom(arrStringPal: arrStringPal, left: left, right: right)


print(" chelPa \(chelPa)")

var maxLen = 1
var start = 0
for i in 0 ..< arrStringPal.count {
    for j in i ..< arrStringPal.count {
        
        let chk =  checkPalioDrom(arrStringPal: arrStringPal, left: i, right: j)
        
        if chk && (j - i + 1) > maxLen  {
            start  = i
            maxLen = j - i + 1
            
            print(" 22maxLen\(maxLen)")
        }
        print(" i \(i) j \(j)  \(chk) maxLen\(maxLen)")
    }
}


print(" maxLen \(maxLen) start \(start) arrStringPal \(arrStringPal[start..<start+maxLen])")



func getPermutations(_ str: String) -> [String] {
    var result = [String]()
    
    func permute(_ chars: [Character], _ left: Int, _ right: Int) {
        if left == right {
            result.append(String(chars))
        } else {
            var chars = chars
            for i in left...right {
                chars.swapAt(left, i)
                permute(chars, left + 1, right)
                chars.swapAt(left, i) // backtrack
            }
        }
    }
    
    let chars = Array(str)
    permute(chars, 0, chars.count - 1)
    return result
}

let input = "abc"
let permutations = getPermutations(input)
print(permutations)
