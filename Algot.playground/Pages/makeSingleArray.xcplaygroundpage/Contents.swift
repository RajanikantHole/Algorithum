//let arr = [1,2,[3,4, "44"],5, "2"]  as [Any]
//
//func rec(arrTyep: [Any]) -> [Any] {
//    
//    var result  = [Any]()
//    for val in arrTyep {
//        
//        if let val1 = val as? [Any] {
//            result.append(contentsOf: rec(arrTyep: val1))
//        } else if let empp = val as? Any {
//            result.append(empp)
//        }
//        
//    }
//    return result
//}
//
//let temp = rec(arrTyep: arr)
//print(" temp \(temp)")


let arr = [1,2,[3,4, [1,2], "44"],5, "2",["222222"]]  as [Any]


var result  = [Any]()
func rec(arrTyep: [Any]) {
    

    for val in arrTyep {
        
        if let val1 = val as? [Any] {
            rec(arrTyep: val1)
        } else if let empp = val as? Any {
            result.append(empp)
        }
        
    }
}

//func rec2(arrTyep: [Any]) -> [Any] {
//    
//    var stack: [Any] = arrTyep.reversed()
//    var res = [Any]()
//    
//    while !stack.isEmpty {
//         
//        let lastElement = stack.removeLast()
//        
//        if let lastElement = lastElement as? [Any] {
//            stack.append(contentsOf: lastElement.reversed())
//        } else {
//            print("lastElement \(lastElement)")
//            res.append(lastElement)
//        }
//        
//    }
//    print("res \(res)")
//return res
//
//}

let temp = rec(arrTyep: arr)
print(" temp \(result)")
