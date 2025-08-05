let arrLogSu = [1,3,11, 10, 14 , 21, 12, 14, 11, 22, 44]


func longSt()  -> Int {
    
    
    let n = arrLogSu.count
    
    
    var max  = 1
    for i in 1 ..< n {
        
        max = recLogSun(arr: arrLogSu, index: i)
    }
    
    return max
}


func recLogSun(arr: [Int], index: Int)  -> Int {
    
    if index == 0 {
        return 0
    }
    
    var res = 1
    for prev in  0 ..< index  {
            if arr[prev] < arr[index] {
                res = max(recLogSun(arr: arr, index: prev) + 1, res)
        }
    }

    return res
    
}


let resu = longSt()

//print(" longSt \(resu)")
