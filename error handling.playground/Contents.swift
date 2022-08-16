import Foundation

func delay(a: Int, b: Int) throws -> Int{
    guard b != 0 else { throw NSError(domain: "на 0 делить нельзя", code: 1)}
    
    return a / b
}


do {
    try delay(a: 4, b: 0)
} catch let MyError{
    print(MyError.localizedDescription)
}
