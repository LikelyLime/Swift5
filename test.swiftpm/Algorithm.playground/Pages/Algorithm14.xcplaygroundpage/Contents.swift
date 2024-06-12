//정수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.

import Foundation

func solution(_ n:Int) -> Int {
    var result: Int = 0
    if n != 0 {
        for i in 1...n{
            if n % i == 0 { result += i }
        }
        return result
    }else{
        return result
    }
    
}

