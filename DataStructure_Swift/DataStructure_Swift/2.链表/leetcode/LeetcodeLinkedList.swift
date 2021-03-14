//
//  LeetcodeLinkedList.swift
//  DataStructure_Swift
//
//  Created by suckerl on 2021/3/14.
//  Copyright © 2021 suckerl. All rights reserved.
//

import Cocoa

class LeetcodeLinkedList: NSObject {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    }
    
    
    /*
     * 206: 反转一个单链表 https://leetcode-cn.com/problems/reverse-linked-list/
     */
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        return ListNode()
    }

    
    /*
     * 141: 环形链表 https://leetcode-cn.com/problems/linked-list-cycle/
     */
    
    func reverseListw(_ head: ListNode?) -> ListNode? {
        
        return ListNode()
    }
}
