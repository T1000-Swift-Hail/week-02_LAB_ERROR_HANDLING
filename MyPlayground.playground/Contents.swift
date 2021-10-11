import UIKit


enum QuantityError:Error{
    
  case  lowOrder
    
   case bigOrder
    
}

func placeOrderWatch(order:Int) throws -> String{
    
    let maximumOrder = 6
    let minimumOrder = 1
    
    guard order < maximumOrder else{
        throw QuantityError.bigOrder
    }
    guard order > minimumOrder else{
        throw QuantityError.lowOrder
    }
    
    return "Your order is confirmed"
}

do {
    
    let order = try placeOrderWatch(order:7)
    print(order)
}catch QuantityError.bigOrder{
    
    print("order Too many, you must order 5 watches or less")
}catch QuantityError.lowOrder{
    
    print("order is low, you must order 2 wtaches or more")
    
    
}











//You are developing a shop that sells watches . This shop only accepts orders if they are at least 2 items and no more than 5 orders.
//
//Using what you learned in Error handling, make sure the orders are 2 items or more and no more than 5. Follow those steps :
//
//Create an enum QuantityError that conforms to the Swift Error protocole
//Create a function placeOrderWatch that takes count: Int as a parameter , and return a String . It throws erorrs
//Using a conditional inside the function placeOrderWatch , check for the count to be more than 1 . If not, then throw the error QuantityError.lowOrder
//Using a conditional inside the function placeOrderWatch , check for the count to be less than 6 . If not, then throw the error QuantityError.bigOrder
//Inside the function placeOrderWatch , if the count is acceptable then return "Your order is confirmed"
//Using do, catch & try . Call the function placeOrderWatch
//If the function was successful, then print the returned value from the function.
//If error thrown QuantityError.lowOrder , then print "order is low, you must order 2 wtaches or more"
//If error thrown QuantityError.bigOrder , then print "order Too many, you must order 5 watches or less"
//Bonus
//
//Use guard inside the function placeOrderWatch instead of If conditionals
