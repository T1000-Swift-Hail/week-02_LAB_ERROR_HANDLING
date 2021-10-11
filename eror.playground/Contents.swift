import UIKit

enum QuantityError: Error {
    case bigOrder
    case lowOrder
}

func placeOrderWatch(count: Int) throws -> String {
    let biggestOrder: Int = 5
    let lowestOrder: Int = 2
    
   // if count > biggestOrder {
      //  throw QuantityError.bigOrder
  //  }
   // else if count < lowestOrder {
     //   throw QuantityError.lowOrder
        
        
   // }
    guard count >= lowestOrder else {
        throw QuantityError.lowOrder
    }
    guard count <= biggestOrder else {
        throw QuantityError.bigOrder
    }
return "Your order is confirmed"
}

do {
    let order = try placeOrderWatch(count: 1)
    print(order)
    
}
catch QuantityError.bigOrder {
    print("order Too many, you must order 5 watches or less")
}
catch QuantityError.lowOrder {
    print("order is low, you must order 2 wtaches or more")
}
catch {
    print("An unknown error occurred: \(error)")
}
