import UIKit

enum QuantityError: Error {
case LowOrder
    case MoreOrder
}
func placeOrderWatch(count :Int ) throws -> String {
   
    if count < 2 {
        throw QuantityError.LowOrder }
    guard count <= 6 else {
        throw QuantityError.MoreOrder }
    return "Your order is confirmed"
}
    do {
      let Order = try placeOrderWatch ( count : 3 )
    print ( Order)
    } catch QuantityError.LowOrder {
print("order is low, you must order 2 wtaches or more")
      } catch QuantityError.MoreOrder {
  print("order Too many, you must order 5 watches or less")

      }

