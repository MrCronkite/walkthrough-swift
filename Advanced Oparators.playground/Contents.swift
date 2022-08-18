import Foundation

struct Point {
    var x: Int
    var y: Int
}

var p1 = Point(x: 2, y: 3)
var p2 = Point(x: 5, y: 6)

func + (a: Point, b: Point) -> Point{
    return Point(x: a.x + b.x, y: b.y + a.y)
}

print(p1 + p2)

func += ( a: inout Point, b: Point) {
    return a = a + b
}

p1 += p2
print(p1)

func == (a: Point, b: Point) -> Bool {
    return a.x == b.x && a.y == b.y
}

print(p1 == p2)

prefix func ++ ( a: inout Point) -> Point{
    a.x += 1
    a.y += 1
    return a
}

postfix func ++ (a: inout Point) -> Point {
    let b = a
    ++a
    return b
}

p1 = Point(x: 5, y: 6)
p2 = Point(x: 8, y: 2)

print(p1++)
print(++p1)
