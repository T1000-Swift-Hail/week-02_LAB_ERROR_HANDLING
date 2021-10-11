import UIKit

enum QuantityError : Error {
    case LowOrder
    case BigOrder
}

func placeOrderWatch (count : Int) throws -> String {
    if count < 1  {
        throw QuantityError.LowOrder
    }
    guard count < 6  else {
        throw QuantityError.BigOrder
    }
    return "Your order is confirmed"
}

do {
    let OrderWatchs = try placeOrderWatch(count: 4 )
        print(" ok good \(OrderWatchs) ")
    }
catch QuantityError.LowOrder {
    print("order is low, you must order 2 wtaches or more")
}
catch QuantityError.BigOrder {
    print ("order Too many, you must order 5 watches or less")
}
