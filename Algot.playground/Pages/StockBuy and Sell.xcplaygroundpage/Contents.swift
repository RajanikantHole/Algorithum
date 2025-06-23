let stock = [2,1,3,4,25]

var minBuyVal = stock[0]

var profit = 0

for i in stock {
    
    if minBuyVal > i {
        minBuyVal = i
    }
    
    if profit < ( i - minBuyVal) {
        profit = i - minBuyVal
    }
}


print("profit = \(profit)")

var stringREv  = "abcd"


func rec(str: String) -> String {
    
    if str.isEmpty {
        return ""
    }
    
    let lastE = String(str.last!)
    let newStr = String(str.dropLast())
    return "\(lastE)\( newStr)"
    
}


let rec3 = rec(str: stringREv)

var paliofron  = "abarba"


var strCnt = paliofron.count
while strCnt > 0 {
    
    let firstChar = paliofron.first
    let lastChar = paliofron.last
    paliofron = String(paliofron.dropLast())
    paliofron = String(paliofron.dropFirst())
    strCnt = paliofron.count
    
//    print("while strCnt \(strCnt)")
    if paliofron.first == paliofron.last {
        continue
    } else {
        print("Char not eqaul")
        break
    }
    
}

print("strCnt \(strCnt)")
if strCnt == 1 || strCnt == 0 {
    print("Char  eqaul")
}
