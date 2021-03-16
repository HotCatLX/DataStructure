//
//  LXLXLinkedListTest.swift
//  DataStructure_Swift
//
//  Created by suckerl on 2021/3/10.
//  Copyright © 2021 suckerl. All rights reserved.
//

import Cocoa

/*
 * 单链表测试类
 */

class LXLXLinkedListTest: NSObject {

    public func linkedListTest() {
        self.linkedListTest1()
        self.linkedListTest2()
    }
    
    
    public func linkedListTest1() {
       let linkedlist = LXLinkedList<Int>()
        var val = 0
        for i in 0...20 {
            val += 1
            linkedlist.add(index: i, element: val)
        }
        print(linkedlist.description)
    }
    
    public func linkedListTest2() {
       let linkedlist = LXLinkedList<Int>()
        linkedlist.add(index: 0, element: 1)
        linkedlist.add(index: 1, element: 2)
        linkedlist.add(index: 2, element: 3)
        linkedlist.add(index: 3, element: 4)
        linkedlist.add(index: 4, element: 5)
        linkedlist.add(index: 5, element: 6)
        linkedlist.add(index: 6, element: 7)
        linkedlist.add(index: 0, element: 9)
        print(linkedlist.description)


        print("index 5 is : \(linkedlist.get(index: 5))")
        print("index 0 is : \(linkedlist.get(index: 0))")
        print("5 的 index is : \(linkedlist.indexOf(element: 5))")
        print("2 的 index is : \(linkedlist.indexOf(element: 2))")

        linkedlist.set(index: 4, element: 9)
        linkedlist.set(index: 2, element: 8)
        linkedlist.set(index: 6, element: 0)
        linkedlist.set(index: 0, element: 99)
        //99,1,8,3,9,5,0,7
        print(linkedlist.description)

        print("index is 2, val is \(linkedlist.get(index: 2))")
        print("index is 3, val is \(linkedlist.get(index: 3))")
        
        linkedlist.remove(index: 4)
        linkedlist.remove(index: 1)
        linkedlist.remove(index: 0)
        //8,3,5,0,7
        print(linkedlist.description)
        
        linkedlist.clear()
        print(linkedlist.description)
    }
    
    
    
    
}
