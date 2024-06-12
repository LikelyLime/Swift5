

import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    if(-50000 <= num1 && num1 <= 50000 && -50000 <= num2 && num2 <= 50000){
        return num1 + num2
    }
    return -1
}
