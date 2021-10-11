import UIKit

enum QuantityError: Error{
    case orderLeas
    case orderMore
}
  
func placeOrderWatch(count : Int) throws->String{
  
    let orderLeas1 = 2
    let orderMore1 = 6
    
    if count < orderLeas1{
        throw QuantityError.orderLeas
        
    }
    guard count < orderMore1  else {
        throw QuantityError.orderMore
    }
    return "Your order is confirmed"
}
do {
    let leas = try placeOrderWatch(count: 3)
    print("\(leas)")
}
catch QuantityError.orderLeas{
    print("order is low you must order 2 wtaches or more")
}
catch QuantityError.orderMore{
    print("order Too many, you must order 5 watches or less")
}
