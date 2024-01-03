//
//  UIMenu+ArrayBuilder.swift
//
//
//  Created by L God on 2024/1/3.
//

#if os(iOS) || os(tvOS)

import UIKit
import ArrayBuilder

@available(iOS 13.0, tvOS 14.0, *)
extension UIMenu {
    
    @inlinable
    @inline(__always)
    @MainActor
    public static func make<T: UIMenuElement>(
        title: String = "",
        image: UIImage? = nil,
        identifier: UIMenu.Identifier? = nil,
        options: UIMenu.Options = [],
        @ArrayBuilder children: () -> [T]
    ) -> UIMenu {
        UIMenu(title: title, image: image, identifier: identifier, options: options, children: children())
    }
    
    @available(iOS 15.0, tvOS 15.0, *)
    @inlinable
    @inline(__always)
    @MainActor
    public static func make<T: UIMenuElement>(
        title: String = "",
        subtitle: String? = nil,
        image: UIImage? = nil,
        identifier: UIMenu.Identifier? = nil,
        options: UIMenu.Options = [],
        @ArrayBuilder children: () -> [T]
    ) -> UIMenu {
        UIMenu(title: title, subtitle: subtitle, image: image, identifier: identifier, options: options, children: children())
    }
    
    @available(iOS 16.0, tvOS 16.0, *)
    @inlinable
    @inline(__always)
    @MainActor
    public static func make<T: UIMenuElement>(
        title: String = "",
        subtitle: String? = nil,
        image: UIImage? = nil,
        identifier: Identifier? = nil,
        options: Options = .displayInline,
        preferredElementSize: UIMenu.ElementSize = { if #available(iOS 17.0, tvOS 17.0, *) { .automatic } else { .large } }(),
        @ArrayBuilder children: () -> [T]
    ) -> UIMenu {
        UIMenu(title: title, subtitle: subtitle, image: image, identifier: identifier, options: options, preferredElementSize: preferredElementSize, children: children())
    }
}

@available(iOS 13.0, tvOS 14.0, *)
extension UIMenu {
    @inlinable
    @inline(__always)
    @MainActor
    public func replacing(@ArrayBuilder newChildren: () -> [UIMenuElement]) {
        self.replacingChildren(newChildren())
    }
}

#endif
