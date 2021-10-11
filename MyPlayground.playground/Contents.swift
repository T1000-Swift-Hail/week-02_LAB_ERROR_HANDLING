import UIKit
import Darwin

enum QuantityError : Error {
    case lowOrder
    case bigOrder
}

func placeOrderWatch(order: Int)throws->String{
    if (order > 5 )  {throw QuantityError.bigOrder}
    else if (order < 2 ) {throw QuantityError.lowOrder }
    
    
    return ""
    
        
}


do {
    let orderCom = try placeOrderWatch(order: 1)
    
   print("Your order is confirmed\(orderCom)")
}
catch QuantityError.bigOrder{
    print("order Too many, you must order 5 watches or less")}
catch QuantityError.lowOrder{
    print("order is low, you must order 2 wtaches or more")
}

