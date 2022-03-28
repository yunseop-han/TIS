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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        // list의 count
        var head = head
        
        var countNode = head
        var count = 0
        while countNode != nil {
            count += 1
            countNode = countNode?.next
        }
        guard n <= count else { return nil }
        guard n != count else { return head?.next }
        // list - n 까지 가서
        // 지우고 합침
        var targetNode = head
        for i in stride(from: 0, to: count - n, by: 1) {
            if i == count - n - 1 {
                var nextNode = targetNode?.next?.next
                targetNode!.next = nextNode
            }
            targetNode = targetNode!.next
        }
        
        return head
    }
}