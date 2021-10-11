enum QuantityError: Error {

case lowOrder
case bigOrder
    }
    
func placeOrderWatch(count: Int) throws -> String {
    
    let lowOrderWeHave: Int = 2
    let morOrderWeHave: Int = 6

    if count < lowOrderWeHave {
        throw QuantityError.lowOrder
    }
   guard count <= morOrderWeHave else {
        throw QuantityError.bigOrder
    }
    
    return "Your order is confirmed"
}

do {
let order = try placeOrderWatch(count:2)
    print(order)
}
catch QuantityError.lowOrder{
 print("order is low, you must order 2 wtaches or more")
}
catch QuantityError.bigOrder{
print("order Too many, you must order 5 watches or less")
}
