import UIKit

enum QuantityError: Error {
   
    case bigOrder
    
    case lowOrder
}

func placeOrderWatch(count: Int)throws -> String
{
    

if count < 2 {
    throw QuantityError.lowOrder
}
if count > 6 {
    throw QuantityError.bigOrder
    
}
    
    return "Order is confirmed"
}
    
    
do {
    
    let order  = try placeOrderWatch(count:7)
     print("Your order is confirmed")
    }
    

catch QuantityError.lowOrder {
     print("order is low, you must order 2 wtaches or more")
}
    catch QuantityError.bigOrder {
        print("order Too many, you must order 5 watches or less")
    }
