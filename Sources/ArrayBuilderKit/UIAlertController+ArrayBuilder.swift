//
//  UIAlertController+ArrayBuilder.swift
//
//
//  Created by L God on 2024/1/3.
//

import UIKit
import ArrayBuilder

extension UIAlertController {
    @inlinable
    @inline(__always)
    public func addActions(@ArrayBuilder _ actions: () -> [UIAlertAction]) {
        for action in actions() {
            self.addAction(action)
        }
    }
}
