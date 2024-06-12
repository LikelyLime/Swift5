import Foundation

func solution(_ s:String) -> Int {
    
    var count = 0
    var mainString = s
    
    while !mainString.isEmpty {
        var firstChar = String( mainString.first! )
        var leftCount = 0
        var rightCount = 0
        var currentIndex = 0
        
        for char in mainString{
            
            
            if firstChar == String(char){
                leftCount += 1
            }else{
                rightCount += 1
            }
            
            if leftCount == rightCount {
                currentIndex += leftCount + rightCount
                count += 1
                mainString.removeSubrange(mainString.startIndex..<mainString.index(mainString.startIndex, offsetBy: currentIndex))
                break
            }
            
        }
        if leftCount != rightCount {
            count += 1
            break
        }

    }
    
        
    return count
}

