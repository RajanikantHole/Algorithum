// Rotate array till nth index

let arr = [1,2,3,4,5]

let index = 2

var arrRes = [Int]()

for i in index ..< arr.count {
    arrRes.append(arr[i])
}

for i in 0 ..< index{
    arrRes.append(arr[i])
}


print(" arrRes \(arrRes)")
//  arrRes [3, 4, 5, 1, 2]
