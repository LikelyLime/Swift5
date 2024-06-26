//함수 solution은 정수 n을 매개변수로 입력받습니다. n의 각 자릿수를 큰것부터 작은 순으로 정렬한 새로운 정수를 리턴해주세요. 예를들어 n이 118372면 873211을 리턴하면 됩니다.

import Foundation

func solution(_ n:Int64) -> Int64 {
    var test = String(n).map{ String($0) }
    var resultArray = test.sorted(by: >)
    var result = ""
    for i in resultArray{
        result += i
    }
    return Int64(result)!
}

solution(118372)
