//
//  LXLinkedList.swift
//  DataStructure_Swift
//
//  Created by suckerl on 2021/3/9.
//  Copyright © 2021 suckerl. All rights reserved.
//

import Cocoa

protocol addd {
    
}

class LXLinkedList<T>: NSObject, LXCheckRangeable {
    
    //LXCheckRangeable
    var size: Int = 0
    
    //CustomStringConvertible
    override var description: String {
        "LXLinkedList"
    }
    
    //节点
    private class ListNode<T> {
        var val: T
        var next: ListNode?
        init(_ val: T, next: ListNode<T>?) {
            self.val = val
            self.next = next
        }
    }
    
    private var first: ListNode<T>?
    
    /*
     * 获取对应的节点
     * @param index
     * @retuen node
     */
    private func node(index: Int) -> ListNode<T> {
        var node = first
        for _ in 0..<index {
            node = node?.next
        }
        return node!
    }
    
    /*
     * 清空所有元素
     */
    public func clear() {
        size = 0
        first = nil
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
        
        if index == 0 {
            let node = ListNode(element, next: first)
            first = node
        }else {
            let prev =  node(index: index - 1)
            let node = ListNode(element, next: prev.next)
            prev.next = node
        }
       
        size += 1
    }
    
    
    /*
     * 移除index位置对应的元素
     */
    public func remove(index: Int) -> T {
        rangeCheck(index: index)

        let indexnode = node(index: index)
        if index == 0  {
            first = indexnode.next
        }else {
            let prev =  node(index: index - 1)
            prev.next = indexnode.next
        }
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
            if ((node?.val = element) != nil) {
                return i
            }
            node = node?.next
        }
        
        return 0
    }
    
    
}
