//
//  NSDiffableDataSourceSnapshot+ArrayBuilder.swift
//
//
//  Created by L God on 2024/1/3.
//

import UIKit
import ArrayBuilder

extension NSDiffableDataSourceSnapshot {
    @inlinable
    @inline(__always)
    mutating
    public func appendSections(@ArrayBuilder sections: () -> [SectionIdentifierType]) {
        self.appendSections(sections())
    }
    
    @inlinable
    @inline(__always)
    mutating
    public func insertSections(before section: SectionIdentifierType,
                               @ArrayBuilder sections: () -> [SectionIdentifierType]) {
        self.insertSections(sections(), beforeSection: section)
    }
    
    @inlinable
    @inline(__always)
    mutating
    public func insertSections(after section: SectionIdentifierType,
                               @ArrayBuilder sections: () -> [SectionIdentifierType]) {
        self.insertSections(sections(), afterSection: section)
    }
    
    @inlinable
    @inline(__always)
    mutating
    public func appendItems(section: SectionIdentifierType? = nil,
                            @ArrayBuilder identifiers: () -> [ItemIdentifierType]) {
        self.appendItems(identifiers(), toSection: section)
    }
    
    @inlinable
    @inline(__always)
    mutating
    public func insertItems(before identifier: ItemIdentifierType,
                            @ArrayBuilder identifiers: () -> [ItemIdentifierType]) {
        self.insertItems(identifiers(), beforeItem: identifier)
    }
    
    @inlinable
    @inline(__always)
    mutating
    public func insertItems(after identifier: ItemIdentifierType,
                            @ArrayBuilder identifiers: () -> [ItemIdentifierType]) {
        self.insertItems(identifiers(), afterItem: identifier)
    }
}
