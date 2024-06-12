

import Foundation

class stack{
    var storage: [String] = []
    func push(_ item: String){
        storage.append(item)
    }
    func pop() -> String?{
        storage.popLast()
    }
}

var param = "h((e))llo(world)())("

func test(_ param: String){
    var stack = stack()
    
    for i in param{
        if i == "(" || i == ")"{
            stack.push(String(i))
        }
        if stack.storage.count >= 2 {
            if "()" ==  stack.storage[stack.storage.count - 2] + stack.storage[stack.storage.count - 1] || ")(" ==  stack.storage[stack.storage.count - 2] + stack.storage[stack.storage.count - 1]{
                stack.pop()
                stack.pop()
            }
        }
    }
    if stack.storage.count == 0 {
        print("짝 맞음")
    }else{
        print("짝 안맞음")
    }
}
//test(param)
