//두 정수 a, b가 주어졌을 때 a와 b 사이에 속한 모든 정수의 합을 리턴하는 함수, solution을 완성하세요.
//예를 들어 a = 3, b = 5인 경우, 3 + 4 + 5 = 12이므로 12를 리턴합니다.

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    var result: Int = 0
    let lowerBound = min(a, b)
    let upperBound = max(a, b)
    for i in lowerBound...upperBound{
        result += i
    }
    
    return Int64( result )
}

print(solution1(3, 5))


func solution1(_ a:Int, _ b:Int) -> Int64 {
    var result: Int = 0
    if a < b{
        for i in a...b{
            result += i
        }
    }else if a > b{
        for i in b...a{
            result += i
        }
    }else{
        result = 0
    }
    
    return Int64( result )
}

