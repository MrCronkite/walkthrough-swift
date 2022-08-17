import Foundation


// Operation queue

class Vegatables {
    let id: Int
    var cookingVegatables = false
    
    init(id: Int){
        self.id = id
    }
    
    func chokeVega(complition: @escaping((Vegatables) -> Void)){
        print("Vegatable \(id) start choke" )
        cookingVegatables = true
        Thread.sleep(forTimeInterval: 2)
        print("Vegatable \(id) end choke")
        complition.self
    }
}

func vegatablesArrey() -> [Vegatables] {
    [Vegatables(id: 1), Vegatables(id: 5)]
}

func chopVegatables(complition: @escaping(([Vegatables]) -> Void)) {
    let rawVegatables: [Vegatables] = vegatablesArrey()
    var chopVegatables: [Vegatables] = []
    
    let queue = OperationQueue()
    
    for rawVega in rawVegatables {
        let operation = BlockOperation{
            rawVega.chokeVega(complition: {chopVegatables in
               // chopVegatables.append(String(chopVegatables))
            })
        }
        queue.addOperation {operation}
    }
    queue.addOperation {
        complition(chopVegatables)
        
    }
}


chopVegatables{ vegs in
    for veg in vegs {
        print(" \(veg.id) and \(String(describing: veg.chokeVega))")
    }
}



//pyramide of doom

func getUserId(_ complition: @escaping(Int) -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        complition(42)
    }
}

func getUserFirstname(userId: Int, _ complition: @escaping(String) -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        complition("Vlad")
    }
}

func getUserLastname(userId: Int, _ complition: @escaping(String) -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        complition("Volodin")
    }
}

func getUser() {
    getUserId { userId in
        getUserFirstname(userId: userId) { firsyName in
            getUserLastname(userId: userId) { lastName in
                print("\(firsyName) \(lastName)")
            }
        }
    }
}

getUser() 
