// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: external_order_crud.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public enum ServiceDeliveryMethod: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case inPerson // = 0
  case remote // = 1
  case UNRECOGNIZED(Int)

  public init() {
    self = .inPerson
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .inPerson
    case 1: self = .remote
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .inPerson: return 0
    case .remote: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension ServiceDeliveryMethod: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [ServiceDeliveryMethod] = [
    .inPerson,
    .remote,
  ]
}

#endif  // swift(>=4.2)

public struct GetOrderRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct GetOrderResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var order: FullOrder {
    get {return _order ?? FullOrder()}
    set {_order = newValue}
  }
  /// Returns true if `order` has been explicitly set.
  public var hasOrder: Bool {return self._order != nil}
  /// Clears the value of `order`. Subsequent reads from it will return its default value.
  public mutating func clearOrder() {self._order = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _order: FullOrder? = nil
}

///dto describing order when in full order info screen
public struct FullOrder {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  public var profile: Profile {
    get {return _storage._profile ?? Profile()}
    set {_uniqueStorage()._profile = newValue}
  }
  /// Returns true if `profile` has been explicitly set.
  public var hasProfile: Bool {return _storage._profile != nil}
  /// Clears the value of `profile`. Subsequent reads from it will return its default value.
  public mutating func clearProfile() {_uniqueStorage()._profile = nil}

  public var animal: Animal {
    get {return _storage._animal ?? Animal()}
    set {_uniqueStorage()._animal = newValue}
  }
  /// Returns true if `animal` has been explicitly set.
  public var hasAnimal: Bool {return _storage._animal != nil}
  /// Clears the value of `animal`. Subsequent reads from it will return its default value.
  public mutating func clearAnimal() {_uniqueStorage()._animal = nil}

  public var title: String {
    get {return _storage._title}
    set {_uniqueStorage()._title = newValue}
  }

  public var price: String {
    get {return _storage._price}
    set {_uniqueStorage()._price = newValue}
  }

  public var address: Address {
    get {return _storage._address ?? Address()}
    set {_uniqueStorage()._address = newValue}
  }
  /// Returns true if `address` has been explicitly set.
  public var hasAddress: Bool {return _storage._address != nil}
  /// Clears the value of `address`. Subsequent reads from it will return its default value.
  public mutating func clearAddress() {_uniqueStorage()._address = nil}

  ///date of order delivery formatted as dd.MM.yyyy - dd.MM.yyyy
  public var serviceDate: String {
    get {return _storage._serviceDate}
    set {_uniqueStorage()._serviceDate = newValue}
  }

  ///time of order delivery formatted as HH:mm (- HH:mm)
  public var serviceTime: String {
    get {return _storage._serviceTime ?? String()}
    set {_uniqueStorage()._serviceTime = newValue}
  }
  /// Returns true if `serviceTime` has been explicitly set.
  public var hasServiceTime: Bool {return _storage._serviceTime != nil}
  /// Clears the value of `serviceTime`. Subsequent reads from it will return its default value.
  public mutating func clearServiceTime() {_uniqueStorage()._serviceTime = nil}

  public var description_p: String {
    get {return _storage._description_p}
    set {_uniqueStorage()._description_p = newValue}
  }

  ///delivery type, in person or remote
  public var serviceDeliveryMethod: ServiceDeliveryMethod {
    get {return _storage._serviceDeliveryMethod}
    set {_uniqueStorage()._serviceDeliveryMethod = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Profile {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 = 0

  public var name: String = String()

  public var imageURL: String = String()

  ///rating values like 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5
  public var rating: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension ServiceDeliveryMethod: @unchecked Sendable {}
extension GetOrderRequest: @unchecked Sendable {}
extension GetOrderResponse: @unchecked Sendable {}
extension FullOrder: @unchecked Sendable {}
extension Profile: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ru.zveron.contract.order.external"

extension ServiceDeliveryMethod: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "IN_PERSON"),
    1: .same(proto: "REMOTE"),
  ]
}

extension GetOrderRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetOrderRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.id) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetOrderRequest, rhs: GetOrderRequest) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetOrderResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetOrderResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "order"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._order) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._order {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetOrderResponse, rhs: GetOrderResponse) -> Bool {
    if lhs._order != rhs._order {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension FullOrder: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FullOrder"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "profile"),
    3: .same(proto: "animal"),
    4: .same(proto: "title"),
    5: .same(proto: "price"),
    6: .same(proto: "address"),
    7: .standard(proto: "service_date"),
    8: .standard(proto: "service_time"),
    9: .same(proto: "description"),
    10: .standard(proto: "service_delivery_method"),
  ]

  fileprivate class _StorageClass {
    var _id: Int64 = 0
    var _profile: Profile? = nil
    var _animal: Animal? = nil
    var _title: String = String()
    var _price: String = String()
    var _address: Address? = nil
    var _serviceDate: String = String()
    var _serviceTime: String? = nil
    var _description_p: String = String()
    var _serviceDeliveryMethod: ServiceDeliveryMethod = .inPerson

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _profile = source._profile
      _animal = source._animal
      _title = source._title
      _price = source._price
      _address = source._address
      _serviceDate = source._serviceDate
      _serviceTime = source._serviceTime
      _description_p = source._description_p
      _serviceDeliveryMethod = source._serviceDeliveryMethod
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularInt64Field(value: &_storage._id) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._profile) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._animal) }()
        case 4: try { try decoder.decodeSingularStringField(value: &_storage._title) }()
        case 5: try { try decoder.decodeSingularStringField(value: &_storage._price) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._address) }()
        case 7: try { try decoder.decodeSingularStringField(value: &_storage._serviceDate) }()
        case 8: try { try decoder.decodeSingularStringField(value: &_storage._serviceTime) }()
        case 9: try { try decoder.decodeSingularStringField(value: &_storage._description_p) }()
        case 10: try { try decoder.decodeSingularEnumField(value: &_storage._serviceDeliveryMethod) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      if _storage._id != 0 {
        try visitor.visitSingularInt64Field(value: _storage._id, fieldNumber: 1)
      }
      try { if let v = _storage._profile {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      } }()
      try { if let v = _storage._animal {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      } }()
      if !_storage._title.isEmpty {
        try visitor.visitSingularStringField(value: _storage._title, fieldNumber: 4)
      }
      if !_storage._price.isEmpty {
        try visitor.visitSingularStringField(value: _storage._price, fieldNumber: 5)
      }
      try { if let v = _storage._address {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      } }()
      if !_storage._serviceDate.isEmpty {
        try visitor.visitSingularStringField(value: _storage._serviceDate, fieldNumber: 7)
      }
      try { if let v = _storage._serviceTime {
        try visitor.visitSingularStringField(value: v, fieldNumber: 8)
      } }()
      if !_storage._description_p.isEmpty {
        try visitor.visitSingularStringField(value: _storage._description_p, fieldNumber: 9)
      }
      if _storage._serviceDeliveryMethod != .inPerson {
        try visitor.visitSingularEnumField(value: _storage._serviceDeliveryMethod, fieldNumber: 10)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: FullOrder, rhs: FullOrder) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._id != rhs_storage._id {return false}
        if _storage._profile != rhs_storage._profile {return false}
        if _storage._animal != rhs_storage._animal {return false}
        if _storage._title != rhs_storage._title {return false}
        if _storage._price != rhs_storage._price {return false}
        if _storage._address != rhs_storage._address {return false}
        if _storage._serviceDate != rhs_storage._serviceDate {return false}
        if _storage._serviceTime != rhs_storage._serviceTime {return false}
        if _storage._description_p != rhs_storage._description_p {return false}
        if _storage._serviceDeliveryMethod != rhs_storage._serviceDeliveryMethod {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Profile: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Profile"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .standard(proto: "image_url"),
    4: .same(proto: "rating"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.imageURL) }()
      case 4: try { try decoder.decodeSingularFloatField(value: &self.rating) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.imageURL.isEmpty {
      try visitor.visitSingularStringField(value: self.imageURL, fieldNumber: 3)
    }
    if self.rating != 0 {
      try visitor.visitSingularFloatField(value: self.rating, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Profile, rhs: Profile) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.name != rhs.name {return false}
    if lhs.imageURL != rhs.imageURL {return false}
    if lhs.rating != rhs.rating {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
