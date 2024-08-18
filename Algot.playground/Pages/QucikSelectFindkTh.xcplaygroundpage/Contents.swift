
func partition(arr: inout [Int], low: Int, high: Int) -> Int {
    let pivot = arr[high]
    var i = low
    for j in low..<high {
        if arr[j] < pivot {
            arr.swapAt(i, j)
            i += 1
            print("true i \(i)")
        }
    }
    arr.swapAt(i, high)
    print("partition \(i)")
    return i
}

func findKthSmallest(arr: inout [Int], low: Int, high: Int, k: Int) -> Int {
    if low == high {
        return arr[low]
    }
    
    let pivotIndex = partition(arr: &arr, low: low, high: high)
    
    if k == pivotIndex {
        return arr[pivotIndex]
    } else if k < pivotIndex {
        return findKthSmallest(arr: &arr, low: low, high: pivotIndex - 1, k: k)
    } else {
        return findKthSmallest(arr: &arr, low: pivotIndex + 1, high: high, k: k)
    }
}

var arr = [10, 2, 1, 5, 9,4,3]
let k = 2

let kthSmallest = findKthSmallest(arr: &arr, low: 0, high: arr.count - 1, k: k-1)
print("The \(k)th smallest element is \(kthSmallest)")
