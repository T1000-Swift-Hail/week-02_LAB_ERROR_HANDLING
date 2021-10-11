import UIKit
import Darwin

enum QuantityError: Error {
  case morethan1
  case morethan5
    
}

func placeOrderwatch(count:Int) throws ->String {
    let lowOrder = 2
    let bigOrder = 6

    
    if count < lowOrder{
    
        throw QuantityError.morethan1
        
    }
   
        guard count < bigOrder else {
        
            throw QuantityError.morethan5}
    
    
 return  "Your order is confirmed"
}
do{
  let Order1 = try placeOrderwatch(count: 4)
    print("\(Order1)")
}
catch QuantityError.morethan1{
    print("order is low, you must order 2 wtaches or more")
}
catch QuantityError.morethan5{
    print("order Too many, you must order 5 watches or less")
}
