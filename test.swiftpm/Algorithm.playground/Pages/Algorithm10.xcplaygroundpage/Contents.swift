//정수 배열 numbers가 매개변수로 주어집니다. numbers의 원소의 평균값을 return하도록 solution 함수를 완성해주세요.
import Foundation

func solution(_ numbers:[Int]) -> Double {
    var result: Double = 0
    if(1 <= numbers.count && numbers.count <= 100){
        for i in numbers{
            result += Double(i)
        }
    }
    
    return result / Double(numbers.count)
}


