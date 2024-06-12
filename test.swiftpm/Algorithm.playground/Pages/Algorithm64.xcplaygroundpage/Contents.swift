//: [Previous](@previous)

import Foundation


func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    
    var lostSet = Set(lost.sorted()).subtracting(reserve)//lost에만 있는 학생
    var reserveSet = Set(reserve.sorted()).subtracting(lost)// reserve에만 있는 학생
    
    for i in reserveSet.sorted(){
        if( lostSet.contains(i - 1) ){
            lostSet.remove(i - 1)
          
        }else if lostSet.contains(i + 1) {
            lostSet.remove(i + 1)
        }
    }
    return (n - lostSet.count)
}
//: [Next](@next)
