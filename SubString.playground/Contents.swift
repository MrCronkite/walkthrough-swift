import UIKit

extension String {
    func getRage(with position: Int) -> (startIndex: Int, endIndex: Int, range: Int) {
        var char = Array(self)
        var start = char.startIndex
        var end = char.endIndex

        if let index = char[position...].firstIndex(of: "\n") {
            end = index - 1
        }
        if let index = char[0..<position].firstIndex(of: "\n") {
            start = index + 1
        }
        return (start, end, end - start )
    }
}


let someString: String = "test\ndfd1fd 2A  sdfdftest\n"


print(someString.getRage(with: 16))
print(someString.getRage(with: 1))
print(someString.getRage(with: 4))
print(someString.getRage(with: 17))

var sum = 0
var arrr = []

for _ in 1...11 {
    sum += 10000
    arrr.append(sum)
}

arrr.reduce(into: 0) { partialResult, <#Any#> in
    <#code#>
}
print(sum)

