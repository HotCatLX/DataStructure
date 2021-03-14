//
//  LXDoubleLinkedList.swift
//  DataStructure_Swift
//
//  Created by suckerl on 2021/3/15.
//  Copyright © 2021 suckerl. All rights reserved.
//

import Cocoa
/*
 * 双向链表
 */

class LXDoubleLinkedList<T:Equatable>: NSObject,LXCheckRangeable {
    
    
    private var first: ListNode<T>?
    var size: Int = 0
    private var last: ListNode<T>?
    
    //CustomStringConvertible
    override var description: String {
        var returnStr = ""
        returnStr.append("size = \(size), [")
       
        var node = first
        for i in 0 ..< size {
            if (i != 0) {
                returnStr.append(",")
            }
            returnStr.append("\(node!.val)")
            node = node?.next
        }
        returnStr.append("]")
        return returnStr
    }
    
    private class ListNode<T> {
        var val: T
        var next: ListNode?
        var prev: ListNode?
        init(_ val: T, prev: ListNode<T>?,next: ListNode<T>?) {
            self.val = val
            self.next = next
            self.prev = prev
        }
    }
    
    
    /*
     * 获取对应的节点(二分查找)
     * @param index
     * @retuen node
     * warning: 强制! 这里需要优化
     */
    private func node(index: Int) -> ListNode<T> {
        rangeCheck(index: index)
        
        if index < ( size >> 1) {
            var node = first
            for _ in 0..<index {
                node = node?.next
            }
            return node!
        }else {
            var node = last
            for _ in ((size >> 1)..<size).reversed()  {
                node = node?.prev
            }
            return node!
        }
    }
    
    /*
     * 清空所有元素
     */
    public func clear() {
        size = 0
        first = nil
        last = nil
    }
    
    /*
     * 返回index对应位置的节点
     * @param index
     * @retuen node
     */
    public func get(index:Int) -> T {
        let indexNode = node(index: index)
        return indexNode.val
    }
    
    /*
     * 设置index对应位置的节点
     * @param index: 位置 element: 元素
     * @retuen node
     */
    public func set(index:Int, element:T) -> T {
        let indexNode = node(index: index)
        indexNode.val = element
        return indexNode.val
    }
    
    /*
     * 添加节点到index位置
     * @param index: 位置 element: 元素
     * @retuen node
     */
    public func add(index:Int, element:T) {
        rangeCheckForAdd(index: index)
        
        if index == size {//最后面添加
            let oldlast = last
            last = ListNode(element, prev: oldlast, next: nil)
            
            if oldlast == nil {//第一个元素
                first = last
            }else {
                oldlast?.next = last
            }
            
        }else {
            let next = node(index: index)
            let prev = next.prev
            let indexnode = ListNode(element, prev: prev, next: next)
            
            next.prev = indexnode;
            if first == nil {//index = 0
               first = indexnode
            }else {
                prev?.next = indexnode
            }
        }
        
        size += 1
    }
    
    
    /*
     * 移除index位置对应的元素
     */
    public func remove(index: Int) -> T {
        rangeCheck(index: index)

        let indexnode = node(index: index)
        let prev = index == 0 ? first : node(index: index - 1)
        prev?.next = indexnode.next
        size -= 1
        return indexnode.val
    }
    
    /*
     * 查看元素对应的位置
     */
    public func indexOf(element:T) -> Int {
        var node = first
        guard node != nil else {
            //若无头结点,则返回0
            return 0
        }
        
        for i in 0 ..< size {
            if node?.val == element {
                return i
            }
            node = node?.next
        }
        
        return 0
    }
    
}
