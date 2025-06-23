
let arr = [0, -1, 2, -3, 1]

let sum = -7

var colSet = Set<Int>()

var dictAr: [Int: Int] = [Int: Int]()
func checkSum() -> Bool {
    for i in arr {
        
        //print(" checkSumi \(i)")
        
        let diff  = sum - i
//        if colSet.contains(diff) {
//            return true
//        }
        
        if let _ = dictAr[diff] {
            return true
        }
        
        dictAr[i] = i
       // colSet.insert(i)
        
        //print(" colSet \(colSet)")
        
    }
    
    return false
}


let resu = checkSum()


print(" resu - >.\(resu ? "Exist" : "Not") ")
