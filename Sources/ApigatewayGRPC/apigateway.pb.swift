// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: apigateway.proto
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

public struct Ru_Zveron_Contract_Apigateway_ApiGatewayRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///путь запроса в метод сервиса по формату service:method
  public var methodAlias: String = String()

  ///запрос в apigateway
  public var requestBody: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Ru_Zveron_Contract_Apigateway_ApigatewayResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var responseBody: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Ru_Zveron_Contract_Apigateway_ApiGatewayRequest: @unchecked Sendable {}
extension Ru_Zveron_Contract_Apigateway_ApigatewayResponse: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ru.zveron.contract.apigateway"

extension Ru_Zveron_Contract_Apigateway_ApiGatewayRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ApiGatewayRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "method_alias"),
    2: .standard(proto: "request_body"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.methodAlias) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.requestBody) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.methodAlias.isEmpty {
      try visitor.visitSingularStringField(value: self.methodAlias, fieldNumber: 1)
    }
    if !self.requestBody.isEmpty {
      try visitor.visitSingularBytesField(value: self.requestBody, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ru_Zveron_Contract_Apigateway_ApiGatewayRequest, rhs: Ru_Zveron_Contract_Apigateway_ApiGatewayRequest) -> Bool {
    if lhs.methodAlias != rhs.methodAlias {return false}
    if lhs.requestBody != rhs.requestBody {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Ru_Zveron_Contract_Apigateway_ApigatewayResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ApigatewayResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "response_body"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.responseBody) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.responseBody.isEmpty {
      try visitor.visitSingularBytesField(value: self.responseBody, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Ru_Zveron_Contract_Apigateway_ApigatewayResponse, rhs: Ru_Zveron_Contract_Apigateway_ApigatewayResponse) -> Bool {
    if lhs.responseBody != rhs.responseBody {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}