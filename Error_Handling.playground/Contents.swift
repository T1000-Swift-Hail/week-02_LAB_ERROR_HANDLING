import UIKit

enum QuantityError: Error {
    case bigOrder
    case lowOrder
}

func PlaceOrderWatch (Count: Int) throws -> String {

 
    guard (Count <= 5)  else {
        throw QuantityError.bigOrder
        
    }
    guard (Count >= 2) else{
        throw QuantityError.lowOrder
        
    }
    return "Your order is confirmed"
    
    
 
//
//    if Count > BigWatchWeHave {
//        throw QuantityError.bigOrder
//    }
//
//    else if Count < LowestWatchWeHave {
//        throw QuantityError.lowOrder
//    }
//
     
}

do {
    let Quantity = try  PlaceOrderWatch(Count: 1)
    print(Quantity)
    }
    catch QuantityError.bigOrder {
        print("order Too many, you must order 5 watches or less")
    } catch QuantityError.lowOrder {
        print("order is low, you must order 2 wtaches or more")
    } catch {
        print("An unknown error occurred: \(error)")
    }

