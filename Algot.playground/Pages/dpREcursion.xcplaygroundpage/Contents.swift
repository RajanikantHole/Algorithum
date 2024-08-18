let finb = 7


func fibonacci(_ n: Int) -> Int {
    if n <= 1 {
        return n
    }  else {
        return fibonacci(n - 1) + fibonacci(n - 2)
    }
}

//print(fibonacci(finb))


func fibonacciDp() {
    
    var res = [Int] (repeating: 0, count: finb + 1)
    res[1] = 1
    

    for i in 2 ... finb {


        res[i] =   res[ i - 1] +  res[ i - 2  ]

    }

    //print(res[finb])
}

//fibonacciDp()

func fact(n : Int) -> Int {

    if n <= 1 {
        return 1
    }
    return n *  fact(n: n - 1)
}

print("fact ")
//print("fact \(fact(n: 5))")
let factn = 5
var resFact = [Int] (repeating: 1, count: factn + 1)

for i in 2 ... factn {
    resFact[i] =     resFact[i-1]  *  i
 }


print("fact \(resFact[factn])")
