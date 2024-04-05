import Foundation

struct Location {
    var x: Double
    var y: Double
}

let storeRange = 2.5

let firstRestaurant = Location(x: 3, y: 3)
let secondRestaurant = Location(x: 7, y: 7)

struct Customer {
    var name: String
    var email: String
    var phone_number: String
    var isAcceptNewsletter: Bool
    var location: Location
}

var customers: [Customer] = []

var c = Customer(name: "Eva", email: "eva@gmail.com", phone_number: "416-229-0000", isAcceptNewsletter: false, location: Location(x: 10, y: 10))
customers.append(c)

c = Customer(name: "Sophia", email: "sophia@gmail.com", phone_number: "416-222-0001", isAcceptNewsletter: true, location: Location(x: 9, y: 9))
customers.append(c)

c = Customer(name: "Noah", email: "noah@gmail.com", phone_number: "416-330-1234", isAcceptNewsletter: false, location: Location(x: 3, y: 3))
customers.append(c)

c = Customer(name: "Ava", email: "ava@gmail.com", phone_number: "416-440-7777", isAcceptNewsletter: true, location: Location(x: 3, y: 3))
customers.append(c)

c = Customer(name: "Oliver", email: "oliver@gmail.com", phone_number: "416-888-5555", isAcceptNewsletter: false, location: Location(x: 2, y: 2))
customers.append(c)

c = Customer(name: "Mason", email: "mason@gmail.com", phone_number: "416-299-3333", isAcceptNewsletter: false, location: Location(x: 13, y: 13))
customers.append(c)

c = Customer(name: "Mia", email: "mia@gmail.com", phone_number: "416-222-4444", isAcceptNewsletter: false, location: Location(x: 7, y: 7))
customers.append(c)

c = Customer(name: "Tina", email: "Tina@gmail.com", phone_number: "416-666-7777", isAcceptNewsletter: false, location: Location(x: 8, y: 8))
customers.append(c)

c = Customer(name: "Emma", email: "emma@gmail.com", phone_number: "416-001-9999", isAcceptNewsletter: false, location: Location(x: 16, y: 10))
customers.append(c)

c = Customer(name: "Anna", email: "anna@gmail.com", phone_number: "416-888-1290", isAcceptNewsletter: false, location: Location(x: 10, y: 10))
customers.append(c)


func distanceCalculation(from location1: Location, to location2: Location) -> Double {
    let distance1 = Double(location1.x - location2.x)
    let distance2 = Double(location1.y - location2.y)
    return sqrt((distance1 * distance1)+(distance2 * distance2))

}

func printCustomersWithInRange(storeLocation: Location, customer: [Customer]) -> Void {
    for c in customers {
        let calculatedDis = distanceCalculation(from: c.location, to: storeLocation)

        if calculatedDis <= storeRange {
            print("Name: \(c.name) Email: \(c.email)")
        }
        
    }
    
}


print("Following customers are within the range of 2.5 miles from the First Restaurant.")

printCustomersWithInRange(storeLocation: firstRestaurant, customer: customers)


//print("Following customers are within the range of 2.5 miles from the Second Restaurant.")

//printCustomersWithInRange(storeLocation: secondRestaurant, customer: customers)



