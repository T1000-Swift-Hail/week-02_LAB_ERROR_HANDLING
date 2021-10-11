import UIKit

enum QuantityWatches: Error {
    case lowOrder
    case bigOrder
}
func QWatches(Quantity: Int) throws -> String {
    let lowOrder : Int = 1
    if Quantity < lowOrder {
        throw  QuantityWatches.lowOrder
    }
    let bigOrder: Int = 5
    if Quantity > bigOrder {
        throw   QuantityWatches.bigOrder
    }
    return" You Can Buy "
}

    do {
        let cost = try QWatches(Quantity:5)
        print("\(cost)" )
    }catch QuantityWatches.lowOrder {
        print("Excuse me Buy more than one (1)")
    } catch  QuantityWatches.bigOrder {
        print("The maximum quantity we can provide you is 5")
    }
