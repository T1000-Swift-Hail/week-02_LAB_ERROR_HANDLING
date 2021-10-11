import UIKit


enum QuantityError: Error {
    case lessThanTwo
    case nomorethanfive
    
}
func placeOrderWatch(ordernumber: Int) throws -> String {
    let minlow = 1
    let maxbig = 6
    
    guard ordernumber > minlow else {
        throw QuantityError.lessThanTwo
    }
    

guard ordernumber < maxbig else {
        throw QuantityError.nomorethanfive
    }
return "Your order is confirmed"
}
do {
    let order = try placeOrderWatch(ordernumber:5)
    print("Your order is confirmed")
} catch QuantityError.lessThanTwo {
    print("order is low, you must order 2 wtaches or more")
} catch QuantityError.nomorethanfive {
    print("order Too many, you must order 5 watches or less")
}

