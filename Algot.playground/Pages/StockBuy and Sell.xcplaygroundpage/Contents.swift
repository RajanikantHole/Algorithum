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


print(" rec \(rec3)")
