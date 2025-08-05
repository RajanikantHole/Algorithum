

let coinsDemo = [1, 3, 4]
let SumCoin = 27

let maxCoinsExachne = Int.max
func minCoinsRequires(remaining: Int) -> Int {
    
    if remaining == 0 {
        return 0
    }
    
    if remaining < 0 {
        return maxCoinsExachne
    }
    
    
    var minCoinsReq = maxCoinsExachne
    for coin in coinsDemo {
        
        let resultSub = minCoinsRequires(remaining: remaining - coin)
         
        if resultSub != maxCoinsExachne {
            minCoinsReq = min(minCoinsReq, resultSub + 1)
        }
    }
    return minCoinsReq
}

let resultMi = minCoinsRequires(remaining: SumCoin)
let minRe = resultMi == maxCoinsExachne ? -1 : resultMi


print("min Coin change \(minRe)")



