import UIKit

enum QuantityError: Error{
    case bigOrder
    case lowOreder
}

func placeOrderWatch (count: Int) throws -> String {
    let lowestOrder: Int = 2
    let biggestOrder: Int = 6
    
    if count < lowestOrder {
        throw QuantityError.lowOreder

    }
    guard count < biggestOrder else {
      throw QuantityError.bigOrder
    }

    return "Your order is confirmed"
}

do {
  let order1 = try placeOrderWatch(count: 3)
    print("\(order1)")}
catch QuantityError.bigOrder{
    print("Order Too many, you must order 5 watches or less")}
catch QuantityError.lowOreder{
    print("Order is low, you must order 2 wtaches or more")}
catch{
    print("unknown order \(error)")}



    
    
