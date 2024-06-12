//: [Previous](@previous)
//새로 생긴 놀이기구는 인기가 매우 많아 줄이 끊이질 않습니다. 이 놀이기구의 원래 이용료는 price원 인데, 놀이기구를 N 번 째 이용한다면 원래 이용료의 N배를 받기로 하였습니다. 즉, 처음 이용료가 100이었다면 2번째에는 200, 3번째에는 300으로 요금이 인상됩니다.
//놀이기구를 count번 타게 되면 현재 자신이 가지고 있는 금액에서 얼마가 모자라는지를 return 하도록 solution 함수를 완성하세요.
//단, 금액이 부족하지 않으면 0을 return 하세요.
import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1
    var remainMoney:Int64 = Int64(money)
    for i in 1...count{
        remainMoney -= (Int64(price) * Int64(i))
        if remainMoney >= 0 {
            answer = 0
        }else{
            answer = -remainMoney
        }
    }
    
    return answer
}
/**
 1. 놀이 기구의 N번째 탔을때 요금을 구하는 로직을 짠다.
 2. 요금에서 내가 가지고 있는 돈을 뺀다.
 3. 거기서 만약 돈이 마이너스라면 마이너스 제거하고 리턴
 4. 만약 뺀값이 0이라면 0리턴
 */
//print(solution(3, 20, 4))
//: [Next](@next)
