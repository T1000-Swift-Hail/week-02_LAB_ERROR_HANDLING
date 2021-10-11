import UIKit

var greeting = "Hello, playground"


enum QuantityError : Error {
   case orderLessThan2Items
   case moreThan5Orders
}


func placeOrderWatch(count : Int) throws -> String {
    
    let orderLessThan2Items1 : Int = 2
    let moreThan5Orders1 : Int = 6
    
    if count  < orderLessThan2Items1 {
        
        throw QuantityError.orderLessThan2Items
      }
    
    guard count < moreThan5Orders1 else {
        throw QuantityError.moreThan5Orders
      }
  
    return "Your order is confirmed"

}

do {
  let order = try placeOrderWatch(count: 1)
    print("\(order)")
    }
    catch QuantityError.orderLessThan2Items{
        print("order is low, you must order 2 wtaches or more")
    }
    
    catch QuantityError.moreThan5Orders{
        print("order Too many, you must order 5 watches or less")
    }
    
