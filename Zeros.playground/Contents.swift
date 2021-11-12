import UIKit

var array = [12,17,0,23,0,44,20,0]

func moveZeroes(_ nums: inout [Int]) {
    // amount of swaps, will be used a as reference for next swap index
    var j = 0
    
    for (i, e) in nums.enumerated() {
        if e == 0 {
            nums.swapAt(j, i)
            j += 1
        }
    }
    
}

// find the quantity of zeros in array
func findZeros() -> Int {
    var couter = 0
    array.compactMap { value in
        if value == 0 {
            couter += 1
        }
    }
    return couter
}

print("Given array: \(array)")
print("Contains \(findZeros()) zeros.")
moveZeroes(&array)
print("After shifting all zeroes to the beginning of array, it looks: \(array)")
