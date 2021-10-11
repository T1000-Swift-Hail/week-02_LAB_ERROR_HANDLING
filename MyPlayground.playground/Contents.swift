import UIKit

enum QuantityError : Error {
    case bigorder1
    case lessorder2
    
}
func placeOrderWatch(Count: Int ) throws -> String {

    if Count > 1 {
        throw QuantityError.lessorder2
    }
    if Count < 6 {
        throw QuantityError.bigorder1
    }
    return  "Your order is confirmed"
}
   
do {
        let OrderWatch = try placeOrderWatch (Count: 4)
        print("good \(OrderWatch) ")
    }
    catch QuantityError .lessorder2 {
        print("order is less, you must order 2 watches")
    }
catch QuantityError .bigorder1 {
    print( "order too many ,you must order 5 watches")
}
