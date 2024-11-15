let arr1 = [1]
let arr2 = [1,2,3]
let arr3 = [1,2,3]


var res = [Int: Int]()


for i in arr1 {
    
    res[i] = 1
}


for j in arr2 {
    
    if res[j] == 1 {
        res[j] = 2
    }
}



for k in arr3 {
    
    if res[k] == 2 {
        res[k] = 3
    }
}

let temp = res.filter{ $0.value == 3 }.map{ $0.key}.sorted()
print("temp \(temp)")
