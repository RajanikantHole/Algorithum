let arr = [1,2,[3,4, "44"],5, "2"]  as [Any]

func rec(arrTyep: [Any]) -> [Any] {
    
    var result  = [Any]()
    for val in arrTyep {
        
        if let val1 = val as? [Any] {
            result.append(contentsOf: rec(arrTyep: val1))
        } else if let empp = val as? Any {
            result.append(empp)
        }
        
    }
    return result
}

let temp = rec(arrTyep: arr)
print(" temp \(temp)")
