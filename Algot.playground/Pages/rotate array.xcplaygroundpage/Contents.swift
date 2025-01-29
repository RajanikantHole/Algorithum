
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

//for i in 0 ..< arr1.count - 1{
//    arr1[i] =  arr1[i + 1]
//}
//
//arr1[arr1.count - 1] = first
//print(" arr1 \(arr1)")
