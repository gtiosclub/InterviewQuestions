//: Optionals-Solution
//: Use Swift 2.2 and XCode 7

var array:[Int?] = [nil, 5, 20, nil, 8, nil]
var resultArray:[Int] = []

extension Int {
    func twoThirds() -> Int {
        return self * 2 / 3
    }
}
/*
 ============================================================================
 Challenge 1:
 ============================================================================
 In 3 lines of code, iterate through the array, print out the values of the array.
 Expected:
 nil
 Optional(5)
 Optional(20)
 nil
 Optional(8)
 nil
 
 Solution:
 func challenge(array array:[Int?]) {
     for intOptional in array {
         print(intOptional)
     }
 }
 
 ============================================================================
 Challenge 2:
 ============================================================================
 In 3 lines of code, iterate through the array, call twoThirds() on the objects, and print them out. You will need to use '?'.
 Expected:
 nil
 Optional(3)
 Optional(13)
 nil
 Optional(5)
 nil
 
 Solution:
 func challenge(array array:[Int?]) {
     for intOptional in array {
         print(intOptional?.twoThirds)
     }
 }
 
 Follow Up: What happens when you replace '?' with '!'
 Answer: If you force unwrap a nil with '!' the program will error and stop. If you perform a '!' unwrap on a nil, your code will break (expected error, not a crash).
 
 ============================================================================
 Challenge 3:
 ============================================================================
 In 5 lines of code, using a nil checker (if ... != nil), print out only the original unwrapped value objects. Ouput should not have 'Optional()' in it.
 Expected:
 5
 20
 8
 
 Solution:
 func challenge(array array:[Int?]) {
     for intOptional in array {
         if intOptional != nil {
             print(intOptional!)
         }
     }
 }
 
 Follow up: What happens when you remove the '!' ?
 Answer: You will get Optional(5), Optional(20), and Optional(8) as Optional types. Without the '!', Optional objects are not unwrapped.
 
 ============================================================================
 Challenge 4:
 ============================================================================
 In 5 lines of code, using a nil checker (if ... != nil), call twoThirds() on non-nil objects without the Optional().
 Expected:
 3
 13
 5
 
 Solution:
 func challenge(array array:[Int?]) {
     for intOptional in array {
         if intOptional != nil {
             print(intOptional!.twoThirds())
         }
     }
 }
 
 Follow Up: What happens when you replace '!' with '?'
 Answer: You will get unwrapped optional objects
 
 ============================================================================
 Challenge 5:
 ============================================================================
 In 5 lines of code, using an if let statement (if let ... = ... ), print out only the original value objects without the Optional().
 Expected:
 5
 20
 8
 
 Solution:
 func challenge(array array:[Int?]) {
     for intOptional in array {
         if let intUnwrapped = intOptional {
             print(intUnwrapped)
         }
     }
 }
 
 Follow Up: Call twoThirds() on each of the objects. Do you need a '!' or '?' ?
 Answer: No you don't, since the intUnwrapped is already Unwrapped
 
 Note: Usually if-let statement is type-safer than using a nil checker. Use if-let if you're trying to check for nil objects.
 
 ============================================================================
 Challenge 6:
 ============================================================================
 In 5 lines of code, using a nil checker (if ... != nil), instead of printing, add the original value non-optional non-nil objects to the resultArray of type [Int] using append(). Uncomment the line "//print(resultArray)" to see what is in the array.
 Expected:
 [5, 20, 8]
 
 Solution:
 func challenge(array array:[Int?]) {
     for intOptional in array {
         if intOptional != nil {
             resultArray.append(intOptional!)
         }
     }
 }
 
 Follow up: Whats the difference between [Int] and [Int?]. What about [Int!]?
 Answer: [Int] is an array of non-nil integers. [Int?] is an array of nil or non-nil Optional(integers). [Int!] is an array of nil or non-nil implicitly unwrapped integers. Their types do not overlap.
 
 Follow up: Can you do it with a if let statement instead?
 Answer:
 func challenge(array array:[Int?]) {
     for intOptional in array {
         if let intUnwrapped = intOptional {
             resultArray.append(intUnwrapped)
         }
     }
 }
 */

func challenge(array array:[Int?]) {
    
}

challenge(array: array)
//print(resultArray)
