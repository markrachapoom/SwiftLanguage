
// GENERICS
// Created by Mark Rachapoom
// May 17, 2021

//MARK: - Example 1
var charArray = ["a", "b", "c", "d"]
var intArray = [1, 2, 3, 4]

func findTheElement<T: Comparable> (array: [T], item: T) -> Bool {
    for (_, arrItem) in array.enumerated() {
        if item == arrItem {
            return true
        }
    }
    
    return false
}

var result = findTheElement(array: [1, 2, 3, 4], item: 6)
//print("The element exists: \(result)") // false




//MARK: - Example 2
func swapTwoElement<T>(itemOne: inout T, itemTwo: inout T) -> Void {
    // use inout because initially, the arguments are connstant
    print("First element is: \(itemOne)")
    print("Second element is: \(itemTwo)")
    
    for _ in 0..<3 {
        print(".")
    }
    
    let temp = itemOne
    itemOne = itemTwo
    itemTwo = temp
    
    print("First element is now: \(itemOne)")
    print("Second element is now: \(itemTwo)")
}

var one = "One"
var two = "Two"

swapTwoElement(itemOne: &one, itemTwo: &two)
print(one)
print(two)

