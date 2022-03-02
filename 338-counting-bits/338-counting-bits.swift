class Solution {
    func countBits(_ n: Int) -> [Int] {
        let array = Array(0...n)
        return array.map { String($0, radix: 2) }
                    .map { Array($0) }
                    .map { $0.filter{ $0 == "1" }.count ?? 0 }
    }
}