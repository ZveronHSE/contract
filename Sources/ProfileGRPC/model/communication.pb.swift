// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: communication.proto
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

public enum ChannelType: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case vk // = 0
  case google // = 1
  case phone // = 2
  case chat // = 3
  case mailru // = 4
  case UNRECOGNIZED(Int)

  public init() {
    self = .vk
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .vk
    case 1: self = .google
    case 2: self = .phone
    case 3: self = .chat
    case 4: self = .mailru
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .vk: return 0
    case .google: return 1
    case .phone: return 2
    case .chat: return 3
    case .mailru: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension ChannelType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [ChannelType] = [
    .vk,
    .google,
    .phone,
    .chat,
    .mailru,
  ]
}

#endif  // swift(>=4.2)

public struct Links {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var phone: Phone {
    get {return _phone ?? Phone()}
    set {_phone = newValue}
  }
  /// Returns true if `phone` has been explicitly set.
  public var hasPhone: Bool {return self._phone != nil}
  /// Clears the value of `phone`. Subsequent reads from it will return its default value.
  public mutating func clearPhone() {self._phone = nil}

  public var vk: Vk {
    get {return _vk ?? Vk()}
    set {_vk = newValue}
  }
  /// Returns true if `vk` has been explicitly set.
  public var hasVk: Bool {return self._vk != nil}
  /// Clears the value of `vk`. Subsequent reads from it will return its default value.
  public mutating func clearVk() {self._vk = nil}

  public var gmail: Gmail {
    get {return _gmail ?? Gmail()}
    set {_gmail = newValue}
  }
  /// Returns true if `gmail` has been explicitly set.
  public var hasGmail: Bool {return self._gmail != nil}
  /// Clears the value of `gmail`. Subsequent reads from it will return its default value.
  public mutating func clearGmail() {self._gmail = nil}

  public var mail: Mailru {
    get {return _mail ?? Mailru()}
    set {_mail = newValue}
  }
  /// Returns true if `mail` has been explicitly set.
  public var hasMail: Bool {return self._mail != nil}
  /// Clears the value of `mail`. Subsequent reads from it will return its default value.
  public mutating func clearMail() {self._mail = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _phone: Phone? = nil
  fileprivate var _vk: Vk? = nil
  fileprivate var _gmail: Gmail? = nil
  fileprivate var _mail: Mailru? = nil
}

public struct Phone {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var number: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Vk {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var ref: String = String()

  public var email: String {
    get {return _email ?? String()}
    set {_email = newValue}
  }
  /// Returns true if `email` has been explicitly set.
  public var hasEmail: Bool {return self._email != nil}
  /// Clears the value of `email`. Subsequent reads from it will return its default value.
  public mutating func clearEmail() {self._email = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _email: String? = nil
}

public struct Gmail {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var email: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Mailru {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var email: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension ChannelType: @unchecked Sendable {}
extension Links: @unchecked Sendable {}
extension Phone: @unchecked Sendable {}
extension Vk: @unchecked Sendable {}
extension Gmail: @unchecked Sendable {}
extension Mailru: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ru.zveron.contract.profile.model"

extension ChannelType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "VK"),
    1: .same(proto: "GOOGLE"),
    2: .same(proto: "PHONE"),
    3: .same(proto: "CHAT"),
    4: .same(proto: "MAILRU"),
  ]
}

extension Links: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Links"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "phone"),
    2: .same(proto: "vk"),
    3: .same(proto: "gmail"),
    4: .same(proto: "mail"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._phone) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._vk) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._gmail) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._mail) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._phone {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._vk {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._gmail {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._mail {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Links, rhs: Links) -> Bool {
    if lhs._phone != rhs._phone {return false}
    if lhs._vk != rhs._vk {return false}
    if lhs._gmail != rhs._gmail {return false}
    if lhs._mail != rhs._mail {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Phone: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Phone"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "number"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.number) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.number.isEmpty {
      try visitor.visitSingularStringField(value: self.number, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Phone, rhs: Phone) -> Bool {
    if lhs.number != rhs.number {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Vk: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Vk"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "ref"),
    3: .same(proto: "email"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.ref) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self._email) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.ref.isEmpty {
      try visitor.visitSingularStringField(value: self.ref, fieldNumber: 2)
    }
    try { if let v = self._email {
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Vk, rhs: Vk) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.ref != rhs.ref {return false}
    if lhs._email != rhs._email {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Gmail: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Gmail"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "email"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.email) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.email.isEmpty {
      try visitor.visitSingularStringField(value: self.email, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Gmail, rhs: Gmail) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.email != rhs.email {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mailru: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Mailru"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "email"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.email) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.email.isEmpty {
      try visitor.visitSingularStringField(value: self.email, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Mailru, rhs: Mailru) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.email != rhs.email {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
