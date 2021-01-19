//
//  Container.swift
//  DLiver
//
//  Created by Anurag Ajwani on 19/01/2021.
//  Copyright © 2021 Anurag Ajwani. All rights reserved.
//

import Foundation

class Container {
    static let shared = Container()
    var factoryDict: [String: () -> Any] = [:]
    
    func register<Service>(type: Service.Type, _ factory: @escaping () -> Service) {
        factoryDict[String(describing: type.self)] = factory
    }
    
    func resolve<Service>(_ type: Service.Type) -> Service? {
        return factoryDict[String(describing: type.self)]?() as? Service
    }
}
