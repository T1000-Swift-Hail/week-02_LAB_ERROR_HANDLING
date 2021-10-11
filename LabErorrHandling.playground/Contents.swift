import UIKit
import Darwin

enum QuantityErorr: Error {
    
    case lowOrder
    case BigOrder
}

func PlaceOrderWatch (orders:Int) throws -> String {
  
    let chekOrder: Int = 1
    let CheckQuantity:Int = 6
    
    guard orders > chekOrder else {
        
        throw QuantityErorr.lowOrder
    }
    
    guard orders < CheckQuantity else  {
        
        throw QuantityErorr.BigOrder
        
    }
    return "Your order is confirmed"
    
}

do {
    let orderwatch = try PlaceOrderWatch(orders: 4)
    print(orderwatch)
    
} catch QuantityErorr.lowOrder {
    print("order is low, you must order 2 wtaches or more")
} catch QuantityErorr.BigOrder {
    print("order Too many, you must order 5 watches or less")
}
