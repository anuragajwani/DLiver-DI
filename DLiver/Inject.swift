//
//  Inject.swift
//  DLiver
//
//  Created by Anurag Ajwani on 19/01/2021.
//  Copyright © 2021 Anurag Ajwani. All rights reserved.
//

import Foundation

@propertyWrapper
struct Inject<Type> {
    var type: Type
    
    init() {
        self.type = Container.shared.resolve(Type.self)!
    }
    
    var wrappedValue: Type {
        get {
            return self.type
        }
        mutating set {
            self.type = newValue
        }
    }
}
