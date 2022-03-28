class Solution {
    func reverseWords(_ s: String) -> String {
        let spilts = s.components(separatedBy: " ")
        var result: [String] = []
        for spilt in spilts {
            result.append(String(spilt.reversed()))
        }
        
        return result.joined(separator: " ")
    }
}