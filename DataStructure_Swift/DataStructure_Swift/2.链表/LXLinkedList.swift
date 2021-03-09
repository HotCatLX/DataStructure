//
//  LXLinkedList.swift
//  DataStructure_Swift
//
//  Created by suckerl on 2021/3/9.
//  Copyright © 2021 suckerl. All rights reserved.
//

import Cocoa

class LXLinkedList<T>: NSObject, LXCheckRangeable {
    
    //LXCheckRangeable
    
    var size: Int = 0
    
    //节点
    private class ListNode<T> {
        var val: T
        var next: ListNode?
        init(_ val: T) {
            self.val = val
            self.next = nil
        }
    }
    
    private var first: ListNode<T>?
    
    /*
     * 获取对应的节点
     * @param index
     * @retuen node
     */
    private func node(index: Int) -> ListNode<T> {
        return first!
    }
    
    /*
     * 清空所有元素
     */
    public func clear() {
        
    }
    
    /*
     * 返回index对应位置的节点
     * @param index
     * @retuen node
     */
    public func get(index:Int) -> T {
        return "" as! T
    }
    
    /*
     * 设置index对应位置的节点
     * @param index: 位置 element: 元素
     * @retuen node
     */
    public func set(index:Int, element:T) -> T {
        return "" as! T
    }
    
    /*
     * 添加节点到index位置
     * @param index: 位置 element: 元素
     * @retuen node
     */
    public func add(index:Int, element:T) {
        
    }
    
    
    /*
     * 移除index位置对应的元素
     */
    public func remove(index: Int) -> T {
        return "" as! T
    }
    
    /*
     * 查看元素对应的位置
     */
    public func indexOf(element:T) -> Int {
        return 0
    }
    
    
}
