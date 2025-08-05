


//1.
//Rotate array till nth count

var arr1 = [1,2,3,4,5]
var res = [Int]()
let first = arr1[0]

let k = 2 // count
for i in 0 ..< k {
    let temp = arr1[0]
    arr1.removeFirst()
    arr1.append(temp)
}

print(" arr1 \(arr1)")
//  arr1 [3, 4, 5, 1, 2]


//2.
//Make single array

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

let temp = rec(arrTyep: arr)
print(" temp \(result)")

// temp [1, 2, 3, 4, 1, 2, "44", 5, "2", "222222"]
