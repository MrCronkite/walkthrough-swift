import Foundation


struct Family {
    
    var mouther = "Mouther"
    var father = "Father"
    var kids = ["Bob", "Charli", "Stiven"]
    
    var countFamily: Int {
        return 2 + kids.count
    }
    
    subscript(index: Int) -> String?{
        get{
            switch(index) {
            case 0: return father
            case 1: return mouther
            case 2..<(2 + kids.count): return kids[index - 2]
            default: return nil
            }
        }
        
    }
}

var family = Family()

print( family.father)
print( family.mouther)
print( family.kids[0])
print(family.countFamily)

print( family[1]!)
print( family[4]!)


