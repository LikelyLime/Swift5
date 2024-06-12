//자연수 n을 뒤집어 각 자리 숫자를 원소로 가지는 배열 형태로 리턴해주세요. 예를들어 n이 12345이면 [5,4,3,2,1]을 리턴합니다.
import Foundation

func solution(_ n:Int64) -> [Int64] {
    var result: [Int64] = []
    var reN: Int64 = n
    while reN > 0{
        result.append( reN % 10 )
        reN /= 10
    }
    return result
}

print(test(10))


func test(_ n:Int64) -> [Int] {
    
    return String(n).map{ Int(String($0))! }.reversed()
}
