
let arrSum = [1,2,3,4,5,6, 7,12, 12]
let resSum = 19
var summ = 0
var indexArray = [Int]()
for (index, val) in arrSum.enumerated() {
    summ = summ + val
    indexArray.append(index)
    while summ > resSum {
        if summ > resSum {
            summ = summ - arrSum[indexArray.first!]
            indexArray.removeFirst()
        }
    }
    if summ == resSum {
        print(" index \(indexArray)")
        break
    }
}


let stringWord = "dsafasd.asdvafs"
let arrStr = Array(stringWord)
var resulttring = ""

print(" recREsulktString \(resulttring)")

func recStringWord (str: String) -> String {
    
    let temp = String(str.first!)
    print(" temp \(temp)")
    if str.isEmpty {
        return ""
    }
    return recStringWord(str: str) + temp
}

let recREsulktString  = recStringWord(str: stringWord)


//print(" recREsulktString \(recREsulktString)")




