//
//  LXStack.swift
//  DataStructure_Swift
//
//  Created by suckerl on 2021/3/17.
//  Copyright © 2021 suckerl. All rights reserved.
//

import Cocoa

class LXStack<T>: NSObject {
    
    //实现原理选择动态数组
    private var list:[T] = []
    
    /*
     * @retuen 栈内的数量
     */
    func size() -> Int {
        return list.count
    }

    /*
     * 栈是否为空
     * @retuen Bool,栈是否为空
     */
    func isEmpty() -> Bool {
        return (list.count == 0)
    }

    /*
     * 入栈
     * @param element 参数
     */
    func push(element: T) {
        list.append(element)
    }

    /*
     * 出栈
     * @retuen 栈顶元素
     */
    func pop() -> T {
        list.remove(at: list.count - 1)
    }

    /*
     * @retuen 栈顶元素
     */
    func top() -> T {
        return list[list.count - 1]
    }

    /*
     * 清空栈
     */
    func clear() {
        list.removeAll()
    }
}
