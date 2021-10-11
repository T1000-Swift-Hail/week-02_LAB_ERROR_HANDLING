import UIKit
import CoreText

enum QuantityError : Error{
    case ordersMoreThsnTwoItems
    case orderslessthanFiveItems
    
}

func placeOrderWatc( count: Int) throws -> String {
//    orders2items
    
    
    if (count < 2){
        throw  QuantityError.ordersMoreThsnTwoItems
        //the error QuantityError.lowOrder
    }
    if (count > 5 ){
        throw QuantityError.orderslessthanFiveItems
//        the error QuantityError.bigOrder
}

    guard count < 6 else {
        throw QuantityError.orderslessthanFiveItems
    }
    
    
    return "Your order is confirmed"
}

do{
    let plas = try placeOrderWatc(count: 4)
    print("Your order is Acceptance, \( plas)")
}
catch QuantityError.orderslessthanFiveItems {
            print("order Too many, you must order 5 watches or less")
}
catch QuantityError.ordersMoreThsnTwoItems {
    print("order is low, you must order 2 wtaches or more")
}
