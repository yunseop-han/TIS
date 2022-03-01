class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var nums1 = nums1
        var nums2 = nums2
        
        var sortedArray: [Int] = []
        while !nums1.isEmpty || !nums2.isEmpty {
            if let a = nums1.first,
                let b = nums2.first {
            a > b ? sortedArray.append(nums2.removeFirst()) : sortedArray.append(nums1.removeFirst())    
            } else if !nums1.isEmpty {
                sortedArray.append(contentsOf: nums1)
                break
            } else if !nums2.isEmpty {
                sortedArray.append(contentsOf: nums2)
                break
            } else {
                break
            }
        }
        
        return sortedArray.count % 2 == 0 
        ? (Double(sortedArray[sortedArray.count / 2]) + Double(sortedArray[(sortedArray.count / 2) - 1])) / 2 
        : Double(sortedArray[sortedArray.count / 2])
    }
}