import Foundation



enum Weekday: String {
    case monday = "1"
    case tuesday = "aaaaaa"
    case wednesday
    case thuesday
    case friday
    case suterday
    case sunday = "gfdsa"
}


var weekday: Weekday

weekday = .sunday

func setupAlarm(){
    switch weekday{
    case .sunday:
        print("sunday")
    case .suterday:
        print("sunday")
    case .friday:
        print("sunday")
    case .tuesday:
        print("sunday")
    case .thuesday:
        print("sunday")
    case .wednesday:
        print("sunday")
    case .monday:
        print("sunday")
    }
}


print(weekday)

weekday = .friday

print(weekday.rawValue)


enum Planet: Int{
    case mercury = 1, venus, earth = 6, mars, jupiter, saturn, uranus
}

var planet: Planet

planet = .jupiter

planet.rawValue


if let pussebalNumber = Planet(rawValue: 9){
    print(pussebalNumber)
}
