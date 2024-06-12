//: [Previous](@previous)
//문자열 s에 나타나는 문자를 큰것부터 작은 순으로 정렬해 새로운 문자열을 리턴하는 함수, solution을 완성해주세요.
//s는 영문 대소문자로만 구성되어 있으며, 대문자는 소문자보다 작은 것으로 간주합니다.
import Foundation

func solution(_ s:String) -> String {
    if s.count == 0 {""}
    return s.sorted(by: >).reduce("") { $0 + String($1) }
}


//error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
//return sortAry.reduce("") { $0 + $1 }
//print(solution("Zbcdefg"))
//: [Next](@next)
func solution1(_ arr:[Int], _ divisor:Int) -> [Int] {
    var ans:[Int] = []
    for i in arr {
        if(i % divisor == 0) {
            ans.append(i)
        }
    }
    return ans
}
    print(solution1([1, 5, 9, 10], 5))
