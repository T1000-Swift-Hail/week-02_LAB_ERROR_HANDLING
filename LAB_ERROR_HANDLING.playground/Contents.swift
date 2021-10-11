import UIKit
import CoreText

enum QuantitError : Error {
case  ordersLessThsnOneItems
case ordersMoreThsnFiveItems
    
}
func PlaceOrderWath (count:Int) throws -> String {
// orders2itemes
  if (count < 1) {
      throw QuantitError.ordersLessThsnOneItems
  //the erre Quantity Error.bigOrder
    }
   if (count>5) {
       throw QuantitError.ordersMoreThsnFiveItems
   
   }
    return "Your Order is confirmed"
}
        
 
    do {
 
        let order = try PlaceOrderWath(count: 3)
        print(order)
        
        
    } catch QuantitError.ordersMoreThsnFiveItems {
        print("QuantitError.ordersLessThsnOneItems")
    } catch QuantitError.ordersLessThsnOneItems {
        print("QuantitError.ordersMoreThsnFiveItems")
    }

            
            

       


