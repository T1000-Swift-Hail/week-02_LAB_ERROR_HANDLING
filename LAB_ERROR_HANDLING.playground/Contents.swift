import UIKit

enum QuantityError: Error{
  case LowOrder
  case BigOrder
}

func placeOrderWatch (count: Int) throws -> String {
    if count < 2 {
        throw QuantityError.LowOrder
    }
    guard count < 6 else {
           throw QuantityError.BigOrder
       }
    return "Your order is confirmed"
}


do {
let placeOrder = try placeOrderWatch (count: 5)
    print("Successful, \(placeOrder)")
}
catch QuantityError.LowOrder {
    print("order is low, you must order 2 wtaches or more")
}
catch QuantityError.BigOrder {
    print("order Too many, you must order 5 watches or less")
}
