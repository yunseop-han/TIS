/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var iterator = head
        var count = 0
        while iterator?.next != nil {
            iterator = iterator?.next
            count += 1
        }
        
        let middle = (count - 1) / 2
        var resultCount = 0
        var head = head
        while head?.next != nil {
            head = head?.next
            if resultCount == middle {
                return head
            } else {
                resultCount += 1
            }
        }
        return head
    }
}