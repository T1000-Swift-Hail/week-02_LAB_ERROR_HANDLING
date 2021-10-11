import UIKit
import CoreText

enum QuantityError : Error{
case orderMoreThanTwoItems
case  orderLessthanFiveItems

}
func placeOrderWatch (count:Int)throws->String{
  //  orders2items

    if (count < 2) {
        throw QuantityError.orderMoreThanTwoItems
    }
    if (count>5) {
    throw QuantityError.orderLessthanFiveItems

    }
    return "your order is confirmed"
}

   do{
       
   let order = try placeOrderWatch(count: 2)
       print(order)
}
catch QuantityError.orderMoreThanTwoItems{
print("order is More Than Two")
}
catch QuantityError.orderLessthanFiveItems{
print("order is Less than five")
}

