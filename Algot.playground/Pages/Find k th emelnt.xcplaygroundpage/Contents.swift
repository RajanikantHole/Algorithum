


struct Heap<T: Comparable> {
    var elements: [T] = []
    let sort: (T, T) -> Bool
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
    
    func peek() -> T? {
        return elements.first
    }
    
    mutating func insert(_ value: T) {
        elements.append(value)
        siftUp(from: elements.count - 1)
    }
    
    mutating func remove() -> T? {
        guard !isEmpty else { return nil }
        elements.swapAt(0, elements.count - 1)
        let value = elements.removeLast()
        siftDown(from: 0)
        return value
    }
    
    mutating func siftUp(from index: Int) {
        var child = index
        var parent = self.parent(of: child)
        while child > 0 && sort(elements[child], elements[parent]) {
            elements.swapAt(child, parent)
            child = parent
            parent = self.parent(of: child)
        }
    }
    
    mutating func siftDown(from index: Int) {
        var parent = index
        while true {
            let left = self.leftChild(of: parent)
            let right = left + 1
            var candidate = parent
            if left < count && sort(elements[left], elements[candidate]) {
                candidate = left
            }
            if right < count && sort(elements[right], elements[candidate]) {
                candidate = right
            }
            if candidate == parent {
                return
            }
            elements.swapAt(parent, candidate)
            parent = candidate
        }
    }
    
    func parent(of index: Int) -> Int {
        return (index - 1) / 2
    }
    
    func leftChild(of index: Int) -> Int {
        return 2 * index + 1
    }
    
    func rightChild(of index: Int) -> Int {
        return 2 * index + 2
    }
}




// Function to find the kth smallest array element
func kthSmallest(_ arr: [Int], _ N: Int, _ K: Int) -> Int {
    // Create a max heap (priority queue)
    var maxHeap = Heap<Int>(sort: >)
    
    // Iterate through the array elements
    for i in 0..<N {
        // Push the current element onto the max heap
        
        print("maxHeap Insert \(maxHeap)")
        maxHeap.insert(arr[i])
        
        // If the size of the max heap exceeds K, remove the largest element
        if maxHeap.count > K {
            
           
            maxHeap.remove()
            print("maxHeap remvoe \(maxHeap)")
        }
    }
    
    // Return the Kth smallest element (top of the max heap)
    return maxHeap.peek() ?? -1
}

// Driver's code
let N = 10
let arr = [10, 5, 4, 3, 48, 6, 2, 33, 53, 10]
let K = 3

// Function call
print("Kth Smallest Element is: \(kthSmallest(arr, N, K))")
