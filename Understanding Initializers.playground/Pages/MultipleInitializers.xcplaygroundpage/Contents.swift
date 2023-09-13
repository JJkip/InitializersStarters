/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Multiple initializers
 Classes and Structs can have many initializers
*/
import Foundation

code(for: "Multiple Initializers for struct") {
    struct Person {
        var name: String
        var age: Int
        var numChildren: Int?
        var married = false
        // Initializer to specify name, age and marital status
        init(name: String, age: Int, married: Bool){
            self.name = name
            self.age = age
            self.married = married
        }
        
        // initializer for all 4 properties
        init(name: String, age: Int, numChildren: Int?, married: Bool){
            self.name = name
            self.age = age
            self.numChildren = numChildren
            self.married = married
        }
        
        // initializer for name and age only with default nil for children and marital status false
        init(name: String, age: Int){
            self.name = name
            self.age = age
        }
        
        // initializer for name, age and number of children, with default marriage status
        init(name: String, age: Int, numChildren: Int?){
            self.name = name
            self.age = age
            self.numChildren = numChildren
        }
        
        // Initializer like the memberwise one.
        init(_ name: String, age: Int, numChildren: Int? = nil, married: Bool = false){
            self.name = name
            self.age = age
            self.numChildren = numChildren
            self.married = married
        }
    }
    
    // Create people using each instance
    let p1 = Person(name: "Alice", age: 30, married: true)
    let p2 = Person(name: "John", age: 20, numChildren: 1, married: false)
    let p3 = Person(name: "Charles", age: 42)
    let p4 = Person(name: "Dan", age: 42, numChildren: 2)
    let p5 = Person(name: "Emily", age: 31)
    // Create an array of 4 people using different intiailziers
    let _: [Person] = [
        Person(name: "Geoge", age: 28, numChildren: 1),
        .init(name: "Ian", age: 29),
        .init(name: "Jane", age: 38, married: true),
        .init(name: "Ken", age: 38, numChildren: 2, married: true)
    ]
}
/*:
[< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
*/
