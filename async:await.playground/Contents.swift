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
                chopVegatables.append(String(chopVegatables))
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
