// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: auth.proto
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

///complementary data
public enum AuthProvider: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case vk // = 0
  case apple // = 1
  case gmail // = 2
  case mailRu // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .vk
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .vk
    case 1: self = .apple
    case 2: self = .gmail
    case 3: self = .mailRu
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .vk: return 0
    case .apple: return 1
    case .gmail: return 2
    case .mailRu: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension AuthProvider: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [AuthProvider] = [
    .vk,
    .apple,
    .gmail,
    .mailRu,
  ]
}

#endif  // swift(>=4.2)

///Запросы
public struct LoginBySocialRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var token: String = String()

  public var authProvider: AuthProvider = .vk

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct LoginByPasswordRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///любая форма телефона, код страны + телефон
  public var phoneNumber: String = String()

  public var password: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct PhoneLoginInitRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///любая форма телефона, код страны + телефон
  public var phoneNumber: String = String()

  public var deviceFp: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct PhoneLoginVerifyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var code: String = String()

  public var sessionID: String = String()

  public var deviceFp: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct PhoneRegisterRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var sessionID: String = String()

  public var password: Data = Data()

  public var name: String = String()

  public var deviceFp: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct VerifyMobileTokenRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var accessToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct IssueNewTokensRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var refreshToken: String = String()

  public var deviceFp: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///ответы
public struct PhoneLoginInitResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var sessionID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct PhoneLoginVerifyResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var mobileToken: MobileToken {
    get {return _mobileToken ?? MobileToken()}
    set {_mobileToken = newValue}
  }
  /// Returns true if `mobileToken` has been explicitly set.
  public var hasMobileToken: Bool {return self._mobileToken != nil}
  /// Clears the value of `mobileToken`. Subsequent reads from it will return its default value.
  public mutating func clearMobileToken() {self._mobileToken = nil}

  public var sessionID: String {
    get {return _sessionID ?? String()}
    set {_sessionID = newValue}
  }
  /// Returns true if `sessionID` has been explicitly set.
  public var hasSessionID: Bool {return self._sessionID != nil}
  /// Clears the value of `sessionID`. Subsequent reads from it will return its default value.
  public mutating func clearSessionID() {self._sessionID = nil}

  public var isNewUser: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _mobileToken: MobileToken? = nil
  fileprivate var _sessionID: String? = nil
}

public struct MobileToken {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var refreshToken: TimedToken {
    get {return _refreshToken ?? TimedToken()}
    set {_refreshToken = newValue}
  }
  /// Returns true if `refreshToken` has been explicitly set.
  public var hasRefreshToken: Bool {return self._refreshToken != nil}
  /// Clears the value of `refreshToken`. Subsequent reads from it will return its default value.
  public mutating func clearRefreshToken() {self._refreshToken = nil}

  public var accessToken: TimedToken {
    get {return _accessToken ?? TimedToken()}
    set {_accessToken = newValue}
  }
  /// Returns true if `accessToken` has been explicitly set.
  public var hasAccessToken: Bool {return self._accessToken != nil}
  /// Clears the value of `accessToken`. Subsequent reads from it will return its default value.
  public mutating func clearAccessToken() {self._accessToken = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _refreshToken: TimedToken? = nil
  fileprivate var _accessToken: TimedToken? = nil
}

public struct TimedToken {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var token: String = String()

  public var expiration: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _expiration ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_expiration = newValue}
  }
  /// Returns true if `expiration` has been explicitly set.
  public var hasExpiration: Bool {return self._expiration != nil}
  /// Clears the value of `expiration`. Subsequent reads from it will return its default value.
  public mutating func clearExpiration() {self._expiration = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _expiration: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

public struct ProfileDto {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension AuthProvider: @unchecked Sendable {}
extension LoginBySocialRequest: @unchecked Sendable {}
extension LoginByPasswordRequest: @unchecked Sendable {}
extension PhoneLoginInitRequest: @unchecked Sendable {}
extension PhoneLoginVerifyRequest: @unchecked Sendable {}
extension PhoneRegisterRequest: @unchecked Sendable {}
extension VerifyMobileTokenRequest: @unchecked Sendable {}
extension IssueNewTokensRequest: @unchecked Sendable {}
extension PhoneLoginInitResponse: @unchecked Sendable {}
extension PhoneLoginVerifyResponse: @unchecked Sendable {}
extension MobileToken: @unchecked Sendable {}
extension TimedToken: @unchecked Sendable {}
extension ProfileDto: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ru.zveron.contract.auth"

extension AuthProvider: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "VK"),
    1: .same(proto: "APPLE"),
    2: .same(proto: "GMAIL"),
    3: .same(proto: "MAIL_RU"),
  ]
}

extension LoginBySocialRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LoginBySocialRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "token"),
    2: .standard(proto: "auth_provider"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.token) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.authProvider) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.token.isEmpty {
      try visitor.visitSingularStringField(value: self.token, fieldNumber: 1)
    }
    if self.authProvider != .vk {
      try visitor.visitSingularEnumField(value: self.authProvider, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: LoginBySocialRequest, rhs: LoginBySocialRequest) -> Bool {
    if lhs.token != rhs.token {return false}
    if lhs.authProvider != rhs.authProvider {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension LoginByPasswordRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LoginByPasswordRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "phone_number"),
    2: .same(proto: "password"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.phoneNumber) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.password) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.phoneNumber.isEmpty {
      try visitor.visitSingularStringField(value: self.phoneNumber, fieldNumber: 1)
    }
    if !self.password.isEmpty {
      try visitor.visitSingularBytesField(value: self.password, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: LoginByPasswordRequest, rhs: LoginByPasswordRequest) -> Bool {
    if lhs.phoneNumber != rhs.phoneNumber {return false}
    if lhs.password != rhs.password {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PhoneLoginInitRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PhoneLoginInitRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "phone_number"),
    2: .standard(proto: "device_fp"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.phoneNumber) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.deviceFp) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.phoneNumber.isEmpty {
      try visitor.visitSingularStringField(value: self.phoneNumber, fieldNumber: 1)
    }
    if !self.deviceFp.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceFp, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: PhoneLoginInitRequest, rhs: PhoneLoginInitRequest) -> Bool {
    if lhs.phoneNumber != rhs.phoneNumber {return false}
    if lhs.deviceFp != rhs.deviceFp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PhoneLoginVerifyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PhoneLoginVerifyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "code"),
    2: .standard(proto: "session_id"),
    3: .standard(proto: "device_fp"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.code) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.sessionID) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.deviceFp) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.code.isEmpty {
      try visitor.visitSingularStringField(value: self.code, fieldNumber: 1)
    }
    if !self.sessionID.isEmpty {
      try visitor.visitSingularStringField(value: self.sessionID, fieldNumber: 2)
    }
    if !self.deviceFp.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceFp, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: PhoneLoginVerifyRequest, rhs: PhoneLoginVerifyRequest) -> Bool {
    if lhs.code != rhs.code {return false}
    if lhs.sessionID != rhs.sessionID {return false}
    if lhs.deviceFp != rhs.deviceFp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PhoneRegisterRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PhoneRegisterRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "session_id"),
    2: .same(proto: "password"),
    3: .same(proto: "name"),
    4: .standard(proto: "device_fp"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sessionID) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.password) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.deviceFp) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sessionID.isEmpty {
      try visitor.visitSingularStringField(value: self.sessionID, fieldNumber: 1)
    }
    if !self.password.isEmpty {
      try visitor.visitSingularBytesField(value: self.password, fieldNumber: 2)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 3)
    }
    if !self.deviceFp.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceFp, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: PhoneRegisterRequest, rhs: PhoneRegisterRequest) -> Bool {
    if lhs.sessionID != rhs.sessionID {return false}
    if lhs.password != rhs.password {return false}
    if lhs.name != rhs.name {return false}
    if lhs.deviceFp != rhs.deviceFp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension VerifyMobileTokenRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".VerifyMobileTokenRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "access_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.accessToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.accessToken.isEmpty {
      try visitor.visitSingularStringField(value: self.accessToken, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: VerifyMobileTokenRequest, rhs: VerifyMobileTokenRequest) -> Bool {
    if lhs.accessToken != rhs.accessToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IssueNewTokensRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".IssueNewTokensRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "refresh_token"),
    2: .standard(proto: "device_fp"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.refreshToken) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.deviceFp) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.refreshToken.isEmpty {
      try visitor.visitSingularStringField(value: self.refreshToken, fieldNumber: 1)
    }
    if !self.deviceFp.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceFp, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IssueNewTokensRequest, rhs: IssueNewTokensRequest) -> Bool {
    if lhs.refreshToken != rhs.refreshToken {return false}
    if lhs.deviceFp != rhs.deviceFp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PhoneLoginInitResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PhoneLoginInitResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "session_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sessionID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sessionID.isEmpty {
      try visitor.visitSingularStringField(value: self.sessionID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: PhoneLoginInitResponse, rhs: PhoneLoginInitResponse) -> Bool {
    if lhs.sessionID != rhs.sessionID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension PhoneLoginVerifyResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PhoneLoginVerifyResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "mobile_token"),
    2: .standard(proto: "session_id"),
    3: .standard(proto: "is_new_user"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._mobileToken) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._sessionID) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.isNewUser) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._mobileToken {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._sessionID {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    } }()
    if self.isNewUser != false {
      try visitor.visitSingularBoolField(value: self.isNewUser, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: PhoneLoginVerifyResponse, rhs: PhoneLoginVerifyResponse) -> Bool {
    if lhs._mobileToken != rhs._mobileToken {return false}
    if lhs._sessionID != rhs._sessionID {return false}
    if lhs.isNewUser != rhs.isNewUser {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension MobileToken: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MobileToken"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "refresh_token"),
    2: .standard(proto: "access_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._refreshToken) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._accessToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._refreshToken {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._accessToken {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: MobileToken, rhs: MobileToken) -> Bool {
    if lhs._refreshToken != rhs._refreshToken {return false}
    if lhs._accessToken != rhs._accessToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TimedToken: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TimedToken"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "token"),
    2: .same(proto: "expiration"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.token) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._expiration) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.token.isEmpty {
      try visitor.visitSingularStringField(value: self.token, fieldNumber: 1)
    }
    try { if let v = self._expiration {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TimedToken, rhs: TimedToken) -> Bool {
    if lhs.token != rhs.token {return false}
    if lhs._expiration != rhs._expiration {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ProfileDto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ProfileDto"
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

  public static func ==(lhs: ProfileDto, rhs: ProfileDto) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
