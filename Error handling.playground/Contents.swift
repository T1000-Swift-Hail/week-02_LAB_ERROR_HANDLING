import UIKit


enum QuantityError: Error {
    case bigOrder
    case lowOrder
}
 
var count : Int

func placeOrderWatch(count: Int) throws -> String {
    
    if count < 1 {
        throw QuantityError.lowOrder
    }
    guard count < 6 else {
        throw QuantityError.bigOrder
    }
    return "Your order is confirmed \(count)"
}

do {
    let amount = try placeOrderWatch(count: 5)
    print("\(amount) Watches to ship in this package.")
} catch QuantityError.lowOrder {
    print("Your order is low, you must order 1 wtaches or more!")
} catch QuantityError.bigOrder {
    print("Your order Too many, you must order 5 watches or less")
} catch {
    print("An unknown error occurred: \(error)")
}
