//
//  UIActivityViewController+ArrayBuilder.swift
//
//
//  Created by L God on 2024/1/3.
//

#if os(iOS) || os(tvOS)
import UIKit
import ArrayBuilder

extension UIActivityViewController {
    @inlinable
    @inline(__always)
    public convenience init(@ArrayBuilder activityItems: () -> [Any],
                            @ArrayBuilder applicationActivities: () -> [UIActivity]) {
        self.init(activityItems: activityItems(), applicationActivities: applicationActivities())
    }
}

#endif
