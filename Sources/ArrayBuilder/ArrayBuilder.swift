// The Swift Programming Language
// https://docs.swift.org/swift-book



@resultBuilder
public enum ArrayBuilder {
    public static func buildBlock<T>() -> [T] {
        []
    }

    public static func buildBlock<T>(_ components: [T]...) -> [T] {
        components.flatMap { $0 }
    }
}

extension ArrayBuilder {
    public static func buildEither<T>(first component: [T]) -> [T] {
        component
    }
    
    public static func buildEither<T>(second component: [T]) -> [T] {
        component
    }
}

extension ArrayBuilder {
    public static func buildOptional<T>(_ component: [T]?) -> [T] {
        component ?? []
    }
}

extension ArrayBuilder {
    
    public static func buildArray<T>(_ components: [[T]]) -> [T] {
        components.flatMap { $0 }
    }
}

extension ArrayBuilder {
    public static func buildExpression<T>(_ expression: T) -> [T] {
        [expression]
    }
    
    public static func buildExpression<T>(_ expression: T?) -> [T] {
        [expression].compactMap { $0 }
    }
    
    public static func buildExpression<T>(_ expression: [T]) -> [T] {
        expression
    }
    
    public static func buildExpression<T>(_ expression: [T]?) -> [T] {
        expression ?? []
    }
}

public func make<T>(@ArrayBuilder _ expression: () -> [T]) -> [T] {
    expression()
}

extension Array {
    mutating
    public func append(@ArrayBuilder _ sequence: () -> [Element]) {
        self.append(contentsOf: sequence())
    }
    
}
