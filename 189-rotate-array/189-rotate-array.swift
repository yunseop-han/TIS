class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        for i in stride(from: 0, to: k, by: 1) {
            let num = nums.removeLast()
            nums.insert(num, at: 0)
        }
    }
}