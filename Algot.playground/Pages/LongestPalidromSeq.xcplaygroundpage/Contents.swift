let stringPAl = "abprca"
let arrChat = Array(stringPAl)

func recPaliodrom(arr: [Character], i: Int, j: Int) -> Int {
    
    if i > j {
        return 0
    }
    if i  == j {
        return 1
    }
    
 
    
    
    if arrChat[i] ==  arrChat[j] {
        return 2 + recPaliodrom(arr: arrChat, i: i+1, j: j-1)
    } else {
        return max(recPaliodrom(arr: arrChat, i: i+1, j: j), recPaliodrom(arr: arrChat, i: i, j: j-1))
    }
}


let string1 = "AGGTAB"
let arrChat1 = Array(string1)

let string2 = "GXTXAYB"
let arrChat2 = Array(string2)

func recCommon(arr1: [Character], arr2: [Character], i: Int, j: Int) -> Int {
    // Base case: reached end of either string
    if i == arr1.count || j == arr2.count {
        return 0
    }

    if arr1[i] == arr2[j] {
        // Match found, move diagonally
        return 1 + recCommon(arr1: arr1, arr2: arr2, i: i+1, j: j+1)
    } else {
        // Try skipping one character from either string
        return max(
            recCommon(arr1: arr1, arr2: arr2, i: i+1, j: j),
            recCommon(arr1: arr1, arr2: arr2, i: i, j: j+1)
        )
    }
}

let recVal = recCommon(arr1: arrChat1, arr2: arrChat2, i: 0, j: 0)
//print("Longest Common Subsequence length: \(recVal)")
