enum QuantityError:Error{
    case lessThanOne
    case moreThan5
    
}
func PlaceOrderWatch(count:Int) throws -> String {
let  moreThan1Item: Int = 1
let lessThan5Items: Int = 5

guard count > moreThan1Item else { throw QuantityError.lessThanOne }
guard count < lessThan5Items else { throw QuantityError.moreThan5 }
   
    return "Your order is confirmed"
}



do {
    let count = try PlaceOrderWatch(count: 3)
    
    print("success, \(count)")
    
} catch QuantityError.lessThanOne {
    print("order is low, you must order 2 wtaches or more")
} catch QuantityError.moreThan5 {
    print("order Too many, you must order 5 watches or less")
}
