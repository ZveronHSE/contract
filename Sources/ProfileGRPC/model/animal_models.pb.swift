// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: animal_models.proto
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

public struct FullAnimal {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: Int64 = 0

  public var name: String = String()

  public var breed: String = String()

  public var species: String = String()

  ///to string
  public var age: String = String()

  public var imageUrls: [String] = []

  public var documents: [AnimalDocument] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct AnimalDocument {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var url: String = String()

  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension FullAnimal: @unchecked Sendable {}
extension AnimalDocument: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ru.zveron.contract.profile.model"

extension FullAnimal: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FullAnimal"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "breed"),
    4: .same(proto: "species"),
    5: .same(proto: "age"),
    6: .standard(proto: "image_urls"),
    7: .same(proto: "documents"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.breed) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.species) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.age) }()
      case 6: try { try decoder.decodeRepeatedStringField(value: &self.imageUrls) }()
      case 7: try { try decoder.decodeRepeatedMessageField(value: &self.documents) }()
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
    if !self.breed.isEmpty {
      try visitor.visitSingularStringField(value: self.breed, fieldNumber: 3)
    }
    if !self.species.isEmpty {
      try visitor.visitSingularStringField(value: self.species, fieldNumber: 4)
    }
    if !self.age.isEmpty {
      try visitor.visitSingularStringField(value: self.age, fieldNumber: 5)
    }
    if !self.imageUrls.isEmpty {
      try visitor.visitRepeatedStringField(value: self.imageUrls, fieldNumber: 6)
    }
    if !self.documents.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.documents, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: FullAnimal, rhs: FullAnimal) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.name != rhs.name {return false}
    if lhs.breed != rhs.breed {return false}
    if lhs.species != rhs.species {return false}
    if lhs.age != rhs.age {return false}
    if lhs.imageUrls != rhs.imageUrls {return false}
    if lhs.documents != rhs.documents {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension AnimalDocument: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AnimalDocument"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "url"),
    2: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.url) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.url.isEmpty {
      try visitor.visitSingularStringField(value: self.url, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: AnimalDocument, rhs: AnimalDocument) -> Bool {
    if lhs.url != rhs.url {return false}
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
