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

let result = try? delay(a: 4, b: 2)


//error Network

class Network {
    static let responses = [201, 401, 500, 499]
    
    static func responsesDone() -> Int {
        return responses.randomElement()!
    }
}

enum ErrorRequest: Error {
    case pageNotFound
    case indefinedError
    case internalError(Int, String)
}

class NetworkMenage {
    func userMenager(text: String) throws -> String {
        let statuscode = Network.responsesDone()
        
        guard statuscode != 401 else { throw ErrorRequest.pageNotFound}
        guard statuscode != 500 else { throw ErrorRequest.internalError(statuscode, "internet server error")}
        guard statuscode != 499 else {throw ErrorRequest.indefinedError}
        
        return "picture with \(text)"
    }
}

class Browser {
    
    let networkManager: NetworkMenage
    
    init(networkManager: NetworkMenage){
        self.networkManager = networkManager
    }
    
    func getPage(request: String) throws {
        do {
            let result = try networkManager.userMenager(text: request)
            print(result)
        } catch ErrorRequest.pageNotFound {
            print("page not found")
        } catch let ErrorRequest.internalError(code, reason) {
            print("\(code) and \(reason)")}
//        } catch {
//            print(error.localizedDescription)
//        }
    }
}

let network = NetworkMenage()
let chrome = Browser(networkManager: network)
do {
    try    chrome.getPage(request: "Dogs")
    try    chrome.getPage(request: "Dogs")
    try    chrome.getPage(request: "Dogs")
    try    chrome.getPage(request: "Dogs")
    try    chrome.getPage(request: "Dogs")
} catch {
    print(error)
}

