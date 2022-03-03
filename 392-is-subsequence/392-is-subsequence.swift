class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        guard !s.isEmpty else { return true }
        
        var s = Array(s)
        var t = Array(t)
        var c = s.removeFirst()
        for char in t {
            if c == char {
                if s.isEmpty {
                    return true
                }
                c = s.removeFirst()
            }
        }
        return false
    }
}