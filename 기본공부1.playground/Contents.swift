import UIKit


func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result: [Int64] = []
//    result.append(Int64(x))
    for i in 1...n{
        var plus:Int64 = 0;
        
        plus += Int64(x*i)
        result.append(plus)
    }
    return result
}


solution(4, 3)
solution(2, 5)



func outer() -> () -> (){
    func inner(){
        print("inner")
    }
    
    print("outer")
    
    return inner
}


let f1 = outer()
//f1()
f1()
