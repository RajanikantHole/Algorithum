let stringWord = "12341234"
let arrStr = Array(stringWord)
var resulttring = ""

print(" recREsulktString \(resulttring)")

func recStringWord (str: String) -> String {
    var str = str
    let temp = String(str.first!)
    let tegw = String(str.dropFirst())
    print(" 1 str \(str) temp \(temp)")
    if str.count == 1 {
        return str
    }
    print(" 2 temp \(temp) tegw \(tegw)")
    let resu = recStringWord(str: tegw) + temp
   // print(" 2 resu \(resu)")
    return resu
}

let recREsulktString  = recStringWord(str: stringWord)
print(" recREsulktString \(recREsulktString)")

