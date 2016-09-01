func countMon(numDigits n:Int) -> Int {
    if n == 0 {
        return 0
    }
    return countMonImplicit(numDigits: n, startNum: 1, curDigit: n)
}

func countMonImplicit(numDigits n:Int, startNum s:Int, curDigit c:Int) -> Int {
    if c == 0 {
        return 1
    }
    var sum = 0
    for i in s...9 {
        sum += countMonImplicit(numDigits: n, startNum: i, curDigit: c - 1)
    }
    return sum
}

countMon(numDigits: 1)

//Explanation:
//we define the first digit to be the left most digit.

//How do you count n = 1?
// 1 2 3 4 5 6 7 8 9

//How do you count n = 2 where the first digit is 1
// 11 12 13 14 15 16 17 18 19
//How do you count n = 2 where the first digit is 2?
//    22 23 24 25 26 27 28 29
//How do you count n = 2 where the first digit is 3?
//       33 34 35 36 37 38 39

//notice how that we ignore 21 and 32 and 31 because they're not monotomic.
//notice also how that when we count and iterate through the second digit we always start off with the left digit and increase all the way to 9. (thats the for loop)

//How do you count n = 3 where the first digit is 1?
// 111 112 113 114...119, 122 123 124 125...129, 133...
//How do you count n = 3 where the first digit is 2?
//                        222 223 224 225...229, 233...

//Notice that the first digit of every monotomically ascending number is static, and that the rest of the the digits is a subset of all of the numbers of n - 1 where the first digit of the n - 1 subset is greater than or equal to the leftmost first digit.
// for example, to count n = 3 and startNum = 1, you would count all 1XX where XX is all the numbers in the subset of n = 2 where startNum >= 1.
// to count n = 3 and startNum = 2, you would count all 2XX where XX is all the numbers in the subset of n = 2 where startNum >= 2.

//If you can see the pattern, slowly start to write code starting from the base case. What happens when n == 1? What happens when n == 2? What parameters should i use to make recursive calls work? Avoid static numbers if possible. Usually your base case should be 0 or 1 for a lot of recursive problems, unless you're sure that some other number works. The hard part isn't coming up with the pattern, the hard part is translating an algorithm to

//Im really sorry, this is a HORRIBLY hard question. But if you can solve this in under 30 minutes, you're a computational god. The idea for interviews is that you should first start with the base cases and then figure out the pattern. A large number of interview questions are pattern matching and the best way to solve them is to list out base cases and edge cases until you see the pattern.
