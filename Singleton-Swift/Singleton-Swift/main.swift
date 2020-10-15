//
//  main.swift
//  Singleton-Swift
//
//  Created by Gaoxiang Zhang on 2020/10/15.
//

import Foundation

/// 单例模式
class Singleton {
    
    // 1. 将类的构造方法私有化
    private init() {}
    
    // 2. 构建一个静态构造方法
    static var shared: Singleton = {
        let instance = Singleton()
        return instance
    }()
    
}

/// 单例对象无法被克隆
extension Singleton: NSCopying {
    
    func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}

// 验证
let instance1 = Singleton.shared
let instance2 = Singleton.shared

if (instance1 === instance2) {
    print("单例对象创建成功，两个变量包含相同实例")
} else {
    print("单例对象创建失败，两个变量包含不同实例")
}
