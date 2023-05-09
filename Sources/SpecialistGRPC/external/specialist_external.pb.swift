// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: specialist_external.proto
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

public struct GetWaterfallRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var pageSize: Int32 = 0

  public var sort: Sort {
    get {return _sort ?? Sort()}
    set {_sort = newValue}
  }
  /// Returns true if `sort` has been explicitly set.
  public var hasSort: Bool {return self._sort != nil}
  /// Clears the value of `sort`. Subsequent reads from it will return its default value.
  public mutating func clearSort() {self._sort = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _sort: Sort? = nil
}

public struct Sort {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var sortBy: Sort.SortBy = .date

  /// Данные последнего специалиста, который был на прошлой странице(если запрос от второй страницы и последующей)
  public var lastSpecialist: LastSpecialist {
    get {return _lastSpecialist ?? LastSpecialist()}
    set {_lastSpecialist = newValue}
  }
  /// Returns true if `lastSpecialist` has been explicitly set.
  public var hasLastSpecialist: Bool {return self._lastSpecialist != nil}
  /// Clears the value of `lastSpecialist`. Subsequent reads from it will return its default value.
  public mutating func clearLastSpecialist() {self._lastSpecialist = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum SortBy: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case date // = 0
    case priceDesc // = 1
    case priceAsc // = 2
    case rating // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .date
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .date
      case 1: self = .priceDesc
      case 2: self = .priceAsc
      case 3: self = .rating
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .date: return 0
      case .priceDesc: return 1
      case .priceAsc: return 2
      case .rating: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _lastSpecialist: LastSpecialist? = nil
}

#if swift(>=4.2)

extension Sort.SortBy: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Sort.SortBy] = [
    .date,
    .priceDesc,
    .priceAsc,
    .rating,
  ]
}

#endif  // swift(>=4.2)

public struct LastSpecialist {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 = 0

  /// Дата создания
  public var date: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _date ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_date = newValue}
  }
  /// Returns true if `date` has been explicitly set.
  public var hasDate: Bool {return self._date != nil}
  /// Clears the value of `date`. Subsequent reads from it will return its default value.
  public mutating func clearDate() {self._date = nil}

  public var price: Int32 = 0

  public var rating: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _date: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct GetWaterfallResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var specialists: [Specialist] = []

  /// Данные последнего объявления, необходимые для сортировки и работы водопада
  public var lastSpecialist: LastSpecialist {
    get {return _lastSpecialist ?? LastSpecialist()}
    set {_lastSpecialist = newValue}
  }
  /// Returns true if `lastSpecialist` has been explicitly set.
  public var hasLastSpecialist: Bool {return self._lastSpecialist != nil}
  /// Clears the value of `lastSpecialist`. Subsequent reads from it will return its default value.
  public mutating func clearLastSpecialist() {self._lastSpecialist = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _lastSpecialist: LastSpecialist? = nil
}

public struct Specialist {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 = 0

  public var name: String = String()

  public var rating: Double = 0

  public var reviewsCount: Int32 = 0

  public var town: String = String()

  public var subwayHome: Subway {
    get {return _subwayHome ?? Subway()}
    set {_subwayHome = newValue}
  }
  /// Returns true if `subwayHome` has been explicitly set.
  public var hasSubwayHome: Bool {return self._subwayHome != nil}
  /// Clears the value of `subwayHome`. Subsequent reads from it will return its default value.
  public mutating func clearSubwayHome() {self._subwayHome = nil}

  public var description_p: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _subwayHome: Subway? = nil
}

public struct CardSpecialist {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 = 0

  public var name: String = String()

  public var rating: Double = 0

  /// Количество отзывов "123 отзыва"
  public var reviewsCount: String = String()

  /// Если специалист принимает у себя
  public var subwayHome: Subway {
    get {return _subwayHome ?? Subway()}
    set {_subwayHome = newValue}
  }
  /// Returns true if `subwayHome` has been explicitly set.
  public var hasSubwayHome: Bool {return self._subwayHome != nil}
  /// Clears the value of `subwayHome`. Subsequent reads from it will return its default value.
  public mutating func clearSubwayHome() {self._subwayHome = nil}

  /// Куда выезжает специалист, если выезжает вообще
  public var addresses: [Address] = []

  public var services: [Service] = []

  /// В онлайне
  public var online: Bool = false

  public var description_p: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _subwayHome: Subway? = nil
}

public struct Subway {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var stationName: String = String()

  public var color: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Address {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var destination: Address.OneOf_Destination? = nil

  public var subway: Subway {
    get {
      if case .subway(let v)? = destination {return v}
      return Subway()
    }
    set {destination = .subway(newValue)}
  }

  public var district: String {
    get {
      if case .district(let v)? = destination {return v}
      return String()
    }
    set {destination = .district(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Destination: Equatable {
    case subway(Subway)
    case district(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Address.OneOf_Destination, rhs: Address.OneOf_Destination) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.subway, .subway): return {
        guard case .subway(let l) = lhs, case .subway(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.district, .district): return {
        guard case .district(let l) = lhs, case .district(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

public struct Service {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var name: String = String()

  public var price: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension GetWaterfallRequest: @unchecked Sendable {}
extension Sort: @unchecked Sendable {}
extension Sort.SortBy: @unchecked Sendable {}
extension LastSpecialist: @unchecked Sendable {}
extension GetWaterfallResponse: @unchecked Sendable {}
extension Specialist: @unchecked Sendable {}
extension CardSpecialist: @unchecked Sendable {}
extension Subway: @unchecked Sendable {}
extension Address: @unchecked Sendable {}
extension Address.OneOf_Destination: @unchecked Sendable {}
extension Service: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ru.zveron.contract.specialist"

extension GetWaterfallRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetWaterfallRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "page_size"),
    2: .same(proto: "sort"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.pageSize) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._sort) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.pageSize != 0 {
      try visitor.visitSingularInt32Field(value: self.pageSize, fieldNumber: 1)
    }
    try { if let v = self._sort {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetWaterfallRequest, rhs: GetWaterfallRequest) -> Bool {
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs._sort != rhs._sort {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sort: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Sort"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "sort_by"),
    2: .standard(proto: "last_specialist"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.sortBy) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._lastSpecialist) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.sortBy != .date {
      try visitor.visitSingularEnumField(value: self.sortBy, fieldNumber: 1)
    }
    try { if let v = self._lastSpecialist {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Sort, rhs: Sort) -> Bool {
    if lhs.sortBy != rhs.sortBy {return false}
    if lhs._lastSpecialist != rhs._lastSpecialist {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sort.SortBy: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DATE"),
    1: .same(proto: "PRICE_DESC"),
    2: .same(proto: "PRICE_ASC"),
    3: .same(proto: "RATING"),
  ]
}

extension LastSpecialist: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LastSpecialist"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "date"),
    3: .same(proto: "price"),
    4: .same(proto: "rating"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._date) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.price) }()
      case 4: try { try decoder.decodeSingularDoubleField(value: &self.rating) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    try { if let v = self._date {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    if self.price != 0 {
      try visitor.visitSingularInt32Field(value: self.price, fieldNumber: 3)
    }
    if self.rating != 0 {
      try visitor.visitSingularDoubleField(value: self.rating, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: LastSpecialist, rhs: LastSpecialist) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs._date != rhs._date {return false}
    if lhs.price != rhs.price {return false}
    if lhs.rating != rhs.rating {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension GetWaterfallResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetWaterfallResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "specialists"),
    2: .standard(proto: "last_specialist"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.specialists) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._lastSpecialist) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.specialists.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.specialists, fieldNumber: 1)
    }
    try { if let v = self._lastSpecialist {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: GetWaterfallResponse, rhs: GetWaterfallResponse) -> Bool {
    if lhs.specialists != rhs.specialists {return false}
    if lhs._lastSpecialist != rhs._lastSpecialist {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Specialist: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Specialist"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "rating"),
    4: .standard(proto: "reviews_count"),
    5: .same(proto: "town"),
    6: .standard(proto: "subway_home"),
    7: .same(proto: "description"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularDoubleField(value: &self.rating) }()
      case 4: try { try decoder.decodeSingularInt32Field(value: &self.reviewsCount) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.town) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._subwayHome) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if self.rating != 0 {
      try visitor.visitSingularDoubleField(value: self.rating, fieldNumber: 3)
    }
    if self.reviewsCount != 0 {
      try visitor.visitSingularInt32Field(value: self.reviewsCount, fieldNumber: 4)
    }
    if !self.town.isEmpty {
      try visitor.visitSingularStringField(value: self.town, fieldNumber: 5)
    }
    try { if let v = self._subwayHome {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Specialist, rhs: Specialist) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.name != rhs.name {return false}
    if lhs.rating != rhs.rating {return false}
    if lhs.reviewsCount != rhs.reviewsCount {return false}
    if lhs.town != rhs.town {return false}
    if lhs._subwayHome != rhs._subwayHome {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CardSpecialist: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CardSpecialist"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "rating"),
    4: .standard(proto: "reviews_count"),
    5: .standard(proto: "subway_home"),
    6: .same(proto: "addresses"),
    7: .same(proto: "services"),
    9: .same(proto: "online"),
    10: .same(proto: "description"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularDoubleField(value: &self.rating) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.reviewsCount) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._subwayHome) }()
      case 6: try { try decoder.decodeRepeatedMessageField(value: &self.addresses) }()
      case 7: try { try decoder.decodeRepeatedMessageField(value: &self.services) }()
      case 9: try { try decoder.decodeSingularBoolField(value: &self.online) }()
      case 10: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if self.rating != 0 {
      try visitor.visitSingularDoubleField(value: self.rating, fieldNumber: 3)
    }
    if !self.reviewsCount.isEmpty {
      try visitor.visitSingularStringField(value: self.reviewsCount, fieldNumber: 4)
    }
    try { if let v = self._subwayHome {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    } }()
    if !self.addresses.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.addresses, fieldNumber: 6)
    }
    if !self.services.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.services, fieldNumber: 7)
    }
    if self.online != false {
      try visitor.visitSingularBoolField(value: self.online, fieldNumber: 9)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CardSpecialist, rhs: CardSpecialist) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.name != rhs.name {return false}
    if lhs.rating != rhs.rating {return false}
    if lhs.reviewsCount != rhs.reviewsCount {return false}
    if lhs._subwayHome != rhs._subwayHome {return false}
    if lhs.addresses != rhs.addresses {return false}
    if lhs.services != rhs.services {return false}
    if lhs.online != rhs.online {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Subway: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Subway"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "station_name"),
    2: .same(proto: "color"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.stationName) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.color) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.stationName.isEmpty {
      try visitor.visitSingularStringField(value: self.stationName, fieldNumber: 1)
    }
    if !self.color.isEmpty {
      try visitor.visitSingularStringField(value: self.color, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Subway, rhs: Subway) -> Bool {
    if lhs.stationName != rhs.stationName {return false}
    if lhs.color != rhs.color {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Address: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Address"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "subway"),
    2: .same(proto: "district"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Subway?
        var hadOneofValue = false
        if let current = self.destination {
          hadOneofValue = true
          if case .subway(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.destination = .subway(v)
        }
      }()
      case 2: try {
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {
          if self.destination != nil {try decoder.handleConflictingOneOf()}
          self.destination = .district(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.destination {
    case .subway?: try {
      guard case .subway(let v)? = self.destination else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .district?: try {
      guard case .district(let v)? = self.destination else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Address, rhs: Address) -> Bool {
    if lhs.destination != rhs.destination {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Service: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Service"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "price"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.price) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.price.isEmpty {
      try visitor.visitSingularStringField(value: self.price, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Service, rhs: Service) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.price != rhs.price {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
