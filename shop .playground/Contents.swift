import UIKit

enum QuantityError : Error {
 case lowOrder
 case bigOrder
}

func placeOrderWatch(count:Int) throws -> String {
    if (count > 6) { throw QuantityError.bigOrder }
    guard (count > 1) else { throw QuantityError.lowOrder }
    
    return "Your order is confirmed"
}


do {
    let OrderEror = try placeOrderWatch(count: 88)
    print(OrderEror)
}
catch QuantityError.bigOrder { print("order Too many, you must order 5 watches or less") }
catch QuantityError.lowOrder { print("order is low, you must order 2 wtaches or more") }
