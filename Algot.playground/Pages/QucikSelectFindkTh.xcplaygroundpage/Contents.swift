

func partion(arr: inout [Int], low: Int, high: Int ) -> Int {
    
    let pivot = arr[high]
    var i = low
    for j in low ..< high {
        
        if arr[j] <= pivot {
            arr.swapAt(j, j)
            i = i + 1
        }
    }
    arr.swapAt(i, high)
    
    return i
}


func findSmallest(arr: inout [Int], low: Int, high: Int, k: Int) -> Int {
    
    if low == high {
        return arr[low]
    }
    
    
    let pivotIndex = partion(arr: &arr, low: low, high: high)
    
    if k == pivotIndex {
        return arr[pivotIndex]
    } else if k < pivotIndex {
        return findSmallest(arr:  &arr, low: low, high: pivotIndex - 1, k: k)
    } else {
        return  findSmallest(arr:  &arr, low: pivotIndex + 1, high: high, k: k)
    }
     
    
}


var arr = [2,3,10,4,5,12,45,34,22,32]

let k = 3

let kthLargest = findSmallest(arr: &arr, low: 0, high: arr.count - 1, k: k)

print("kthLargest \(kthLargest)")
