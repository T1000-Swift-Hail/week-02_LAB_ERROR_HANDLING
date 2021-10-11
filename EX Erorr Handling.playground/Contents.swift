import Darwin


enum QuantityError: Error {
    case WatchQuantityTooMany
    case WatchQuantityTooLow(Double)
}

func PlaceOrderWatch(count:Double) throws -> String {
    let ManyQuantityOrder: Double = 5
    let LowQyantityOrder: Double = 1

    if count > ManyQuantityOrder {
        throw QuantityError.WatchQuantityTooMany
    }
    guard count > LowQyantityOrder else {
        throw QuantityError.WatchQuantityTooLow(count - LowQyantityOrder )
    }
    
    return ("We Are Proved ")
}

do {
    let count = try PlaceOrderWatch (count: 2)
    print("It Will Quantity \(count) Thank You For Shopping :)")
}
catch QuantityError.WatchQuantityTooMany {
    print("We Are Sorry Its So Many :(")
} catch QuantityError.WatchQuantityTooLow {
    print("We Are Sorry Its So Low :( ")
}


