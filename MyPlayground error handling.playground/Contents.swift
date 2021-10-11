import UIKit
import CoreFoundation
import CoreText

var greeting = "Hello, playground"



enum QuantityError:Error {
    case lowOrder
    case bigOrder
    
}
func placeOrderWatch(order:Int)throws -> String {
    let maxOrder = 6
    let minOrder = 1
    
    if order > maxOrder  {
        throw QuantityError.bigOrder
    }
    if order < minOrder   {
        throw QuantityError.lowOrder
     
    }
    return "your order is confirmed"
}


do {
    let order = try placeOrderWatch(order:12)
    print(order)
} catch QuantityError.lowOrder{
    print("order is low, you must order 2 wtaches or more")
}catch QuantityError.bigOrder {
    print("order Too many, you must order 5 watches or less")
}




/*
 Create an enum QuantityError that conforms to the Swift Error protocole
 Create a function placeOrderWatch that takes count: Int as a parameter , and return a String . It throws erorrs
 Using a conditional inside the function placeOrderWatch , check for the count to be more than 1 . If not, then throw the error QuantityError.lowOrder
 Using a conditional inside the function placeOrderWatch , check for the count to be less than 6 . If not, then throw the error QuantityError.bigOrder
 Inside the function placeOrderWatch , if the count is acceptable then return "Your order is confirmed"
 Using do, catch & try . Call the function placeOrderWatch
 If the function was successful, then print the returned value from the function.
 If error thrown QuantityError.lowOrder , then print "order is low, you must order 2 wtaches or more"
 If error thrown QuantityError.bigOrder , then print "order Too many, you must order 5 watches or less"

 */
