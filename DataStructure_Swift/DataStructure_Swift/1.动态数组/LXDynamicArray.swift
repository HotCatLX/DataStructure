//
//  LXDynamicArray.swift
//  DataStructure_Swift
//
//  Created by suckerl on 2021/3/9.
//  Copyright © 2021 suckerl. All rights reserved.
//

import Cocoa

class LXDynamicArray<T>: NSObject {
    
    private var size: Int = 0
    
    private var elements:[T] = []
    
    /*
     * 元素的数量
     */
    public func arraySize() -> Int {
        return 0
    }
    
    /*
     * 是否为空
     */
    public func isEmpty() -> Bool {
        return false
    }
    
    /*
     * 是否包含某个元素
     */
    public func contains(element:T) -> Bool {
        return false
    }
    
    /*
     * 添加元素到最后面
     */
    public func add(element:T) {
        
    }
    
    /*
     * 返回index对应位置的元素
     */
    public func get(index: Int) -> T {
        return "" as! T
    }
    
    /*
     * 设置index对应位置的元素
     */
    public func set(index: Int, element: T) -> T {
        return "" as! T
    }
    
    /*
     * 往index对应位置添加元素
     */
    public func add(index: Int, element: T) {
        
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
    public func indexOf(element: T) -> Int {
        return 0
    }
    
    /*
     * 清空所有元素
     */
    public func clear() {
        
    }
    
}
