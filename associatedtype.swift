//What do we need generics in Swift for?
//What does keyword associatedtype and typealias mean to you?

protocol P1 {
    associatedtype Item: Equatable
    var itemArray: [Item] { get set }
    mutating func add(item: Item)
}

extension P1 {
    mutating func add(item: Item) {
        itemArray.append(item)
    }
}

struct StructWithStrings: P1 {
    typealias Item = String // you do not have to specify but it is ok to say
    var itemArray: [String]
}

struct StructWithInts: P1 {
    typealias Item = Int
    var itemArray: [Int]
}
