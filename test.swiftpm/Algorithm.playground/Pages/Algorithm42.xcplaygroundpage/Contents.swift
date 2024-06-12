//: [Previous](@previous)

import Foundation


//삼중 for문으로 i...배열[].count , j...배열[].count - 1까지 , j+1값까지 더하는 것을 반복
//더한 값이 0이 되는 케이스를 구하여 변수에 +1
//변수 리턴
func solution(_ number:[Int]) -> Int {
    var result = 0
    for i in 0..<number.count - 2{
        
        for j in i+1..<number.count - 1{
            for k in j+1..<number.count{
                if number[i] + number[j] + number[k] == 0 {
                  result += 1
                }
            }
        }
        
    }
    return result
}
print(solution([-2, 3, 0, 2, -5]))
//: [Next](@next)
