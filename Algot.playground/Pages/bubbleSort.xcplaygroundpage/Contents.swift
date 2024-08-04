var arr = [1,2,2,3,2,2,1,4]


for i in 0 ..< arr.count {
    
    for j in 0 ..< arr.count-i-1 {
        
        if arr[j] > arr[j+1] {
            let temp = arr [j]
            arr[j] = arr [j+1]
            arr[j+1] = temp
        }
    }
}


print(" bubble sort \(arr)")
