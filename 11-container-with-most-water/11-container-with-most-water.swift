class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var result = 0
        var left = 0
        var right = height.count - 1 
        
        while left < right {
            let h = min(height[left], height[right])
            let w = right - left
            result = max(result, h * w)
            
            if height[left] > height[right] {
              right -= 1  
            } else {
              left += 1  
            }
        }
        return result
    }
}