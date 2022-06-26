import UIKit
import Darwin

/*:
 # Short-circuit Evaluation
 */
var a = 1
var b = 1

func updateLeft() -> Bool {
    a += 1
    return true
}

func updateRight() -> Bool{
    b+=1
    return true
}
if updateLeft() || updateRight(){
    
}

a
b

