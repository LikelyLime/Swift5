//: [Previous](@previous)
//행렬의 덧셈은 행과 열의 크기가 같은 두 행렬의 같은 행, 같은 열의 값을 서로 더한 결과가 됩니다. 2개의 행렬 arr1과 arr2를 입력받아, 행렬 덧셈의 결과를 반환하는 함수, solution을 완성해주세요.
import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
   var test: [Int] = []
    var result: [[Int]] = [];
    for i in 0..<arr1.count{
        for j in 0..<arr1[i].count{
            let sum = arr1[i][j] + arr2[i][j]
            test.append(sum)
        }
        result.append(test)
        test.removeAll()
    }
    return result
}
//: [Next](@next)
