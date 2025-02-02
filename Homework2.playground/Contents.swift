//Task 1

func factorial(n: Int?) -> Int? {
    guard let n = n else {
        return nil
    }
    
    guard n >= 0 else {
        print("Error: Factorial is not defined for negative numbers")
        return nil
    }
    
    if n == 0 {
        return 1
    }
    
    guard let subFactorial = factorial(n: n - 1) else {
        return nil
    }
    
    return n * subFactorial
}



// Task

struct Student {
    var name: String
    var grades: [Double]
}


func averageGrade(for student: Student, inClass students: [String: Student]) -> Double {    guard !student.grades.isEmpty else { return 0 }
    return student.grades.reduce(0, +) / Double(student.grades.count)
}

let student1 = Student(name: "Alice", grades: [5.5, 3.5, 5.75])
let student2 = Student(name: "Bob", grades: [5.25, 3.75, 5.75])
let students = [
    "Alice": student1,
    "Bob": student2
]


func findLongestWord(in words: [String?]) -> String? {
    guard !words.isEmpty else { return nil }
    
    if words.count == 1 {
        return words[0]
    }
    
    let mid = words.count / 2
    let leftHalf = Array(words[..<mid])
    let rightHalf = Array(words[mid...])
    
    let leftLongest = findLongestWord(in: leftHalf)
    let rightLongest = findLongestWord(in: rightHalf)
    
    if leftLongest == nil { return rightLongest }
    if rightLongest == nil { return leftLongest }
    
    return (leftLongest?.count ?? 0) >= (rightLongest?.count ?? 0) ? leftLongest : rightLongest
}


// Task 4


struct ShoppingItem {
    let name: String
    var quantity: Int
    var isPurchased: Bool = false
}

struct ShoppingList {
    private var items: [String: ShoppingItem] = [:]
    
    mutating func addItem(item: ShoppingItem) {
        items[item.name] = item
    }
    
    mutating func addItem(name: String, quantity: Int) {
        let item = ShoppingItem(name: name, quantity: quantity)
        items[name] = item
    }
    
    mutating func markAsPurchased(item: ShoppingItem) {
        var updatedItem = item
        updatedItem.isPurchased = true
        items[item.name] = updatedItem
    }
    
    mutating func markAsPurchased(itemName: String) {
        if var item = items[itemName] {
            item.isPurchased = true
            items[itemName] = item
        }
    }
    
    func listUnpurchasedItems() -> [ShoppingItem] {
        return items.values.filter { !$0.isPurchased }
    }
}

