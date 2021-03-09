//
//  LXCheckRangeable.swift
//  DataStructure_Swift
//
//  Created by suckerl on 2021/3/10.
//  Copyright © 2021 suckerl. All rights reserved.
//

protocol LXCheckRangeable {
    var size: Int {get set}
    func outOfBounds(index: Int)
    func rangeCheck(index: Int)
    func rangeCheckForAdd(index: Int)
}


//将协议的实现放在extension可以为继承协议的类提供默认实现
extension LXCheckRangeable {

    func outOfBounds(index: Int) {
        print("IndexOutOfBounds; index is \(index), size is \(size)")
    }
    
    func rangeCheck(index: Int) {
        if (index < 0 || index >= size)  {
            outOfBounds(index: index)
        }
    }
    
    func rangeCheckForAdd(index: Int) {
        if (index < 0 || index > size)  {
            outOfBounds(index: index)
        }
    }

}
