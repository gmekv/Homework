import Foundation

// Task 1

//for in

for number in 1...10 {
    if number % 2 == 0 {
        print("\(number): Even")
    } else {
        print("\(number): Odd")
    }
}

var number = 1
while number <= 10 {
    if number % 2 == 0 {
        print("\(number): Even")
    } else {
        print("\(number): Odd")
    }
    number += 1
}

var number2 = 1

var num = 1

repeat {
    if num % 2 == 0 {
        print("\(num): Even")
    } else {
        print("\(num): Odd")
    }
    num += 1
} while num <= 10


// Task 2


var favoriteTVSeriesOrMovies = [
    "Breaking Bad",
    "Game of Thrones",
    "The Dark Knight",
    "The Lord of the Rings",
    "Stranger Things",
    "Inception",
    "The Mandalorian",
    "Interstellar",
    "The Office",
    "The Witcher"
]

for (index, item) in favoriteTVSeriesOrMovies.enumerated() {
    if index % 3 == 0 {
        print(item.uppercased())
    } else if index % 4 == 0 {
        print(item.capitalized)
    } else {
        print(item)
    }
}

// Extra task

favoriteTVSeriesOrMovies.append("The Boys")
for item in favoriteTVSeriesOrMovies {
    print(item)
}

//Task 3: Grade Tracker

var studentGrades: [String: String] = [
    "Alice": "A",
    "Bob": "B",
    "Charlie": "C",
    "Diana": "A"
]
print("Students and their grades:")
for (student, grade) in studentGrades {
    print("\(student): \(grade)")
}
studentGrades["Eve"] = "B"
print("\nAdded a new student:")
print(studentGrades)

let specificStudent = "tim"
let grade = studentGrades[specificStudent] ?? "not in the records"
print("\n\(specificStudent)'s grade: \(grade)")

// Task 4: Person Details

var person = (name: "Giorgi", age: 25, city: "Tbilisi")
print("Name: \(person.name)")
print("Age: \(person.age)")
print("City: \(person.city)")
person.city = "London"
print("\nUpdated Tuple: \(person)")

let shoppingList: [(item: String, price: Int)] = [
    ("Milk", 10),
    ("Bread", 8),
    ("Cheese", 12),
    ("Apples", 15),
    ("Bananas", 5)
]
for items in shoppingList {
    print(items.item)
}

var totalCost = 0

for items in shoppingList {
    totalCost += items.price
}
print("\nTotal cost: \(totalCost)")
