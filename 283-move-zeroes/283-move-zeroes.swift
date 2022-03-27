class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var removedCount = 0
        for (index, num) in nums.enumerated() {
            if num == 0 {
                nums.remove(at: index-removedCount)
                nums.append(0)
                removedCount += 1
            }
        }
    }
}