import UIKit

enum QuantityError: Error {
    case bigOrder
    case lowOrder
}

func PlaceOrderWatch (Count: Int) throws -> String {
    let LowestWatchWeHave = 2
    let BigWatchWeHave = 5
    
    if Count > BigWatchWeHave {
        throw QuantityError.bigOrder
    }

    else if Count < LowestWatchWeHave {
        throw QuantityError.lowOrder
    }
        
     return "Your order is confirmed"
}

do {
    let Quantity = try  PlaceOrderWatch(Count: 5)
    print(Quantity)
    }
    catch QuantityError.bigOrder {
        print("We can't sell more than 5 watches")
    } catch QuantityError.lowOrder {
        print("We can't sell less than 2 watches")
    } catch {
        print("An unknown error occurred: \(error)")
    }

