//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: internal_lot.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Usage: instantiate `Ru_Zveron_Contract_Lot_LotInternalServiceClient`, then call methods of this protocol to make API calls.
public protocol Ru_Zveron_Contract_Lot_LotInternalServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Ru_Zveron_Contract_Lot_LotInternalServiceClientInterceptorFactoryProtocol? { get }

  func getLotsBySellerId(
    _ request: Ru_Zveron_Contract_Lot_ProfileLotsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ru_Zveron_Contract_Lot_ProfileLotsRequest, Ru_Zveron_Contract_Lot_ProfileLotsResponse>

  func getLotsById(
    _ request: Ru_Zveron_Contract_Lot_LotsIdRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Ru_Zveron_Contract_Lot_LotsIdRequest, Ru_Zveron_Contract_Lot_LotsIdResponse>
}

extension Ru_Zveron_Contract_Lot_LotInternalServiceClientProtocol {
  public var serviceName: String {
    return "ru.zveron.contract.lot.LotInternalService"
  }

  /// Получить список объявлений у конкретного пользователя.
  ///
  /// - Parameters:
  ///   - request: Request to send to getLotsBySellerId.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getLotsBySellerId(
    _ request: Ru_Zveron_Contract_Lot_ProfileLotsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ru_Zveron_Contract_Lot_ProfileLotsRequest, Ru_Zveron_Contract_Lot_ProfileLotsResponse> {
    return self.makeUnaryCall(
      path: Ru_Zveron_Contract_Lot_LotInternalServiceClientMetadata.Methods.getLotsBySellerId.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetLotsBySellerIdInterceptors() ?? []
    )
  }

  /// Получить по списку айдишников объявления превью объявлений.
  ///
  /// - Parameters:
  ///   - request: Request to send to getLotsById.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getLotsById(
    _ request: Ru_Zveron_Contract_Lot_LotsIdRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Ru_Zveron_Contract_Lot_LotsIdRequest, Ru_Zveron_Contract_Lot_LotsIdResponse> {
    return self.makeUnaryCall(
      path: Ru_Zveron_Contract_Lot_LotInternalServiceClientMetadata.Methods.getLotsById.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetLotsByIdInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension Ru_Zveron_Contract_Lot_LotInternalServiceClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "Ru_Zveron_Contract_Lot_LotInternalServiceNIOClient")
public final class Ru_Zveron_Contract_Lot_LotInternalServiceClient: Ru_Zveron_Contract_Lot_LotInternalServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Ru_Zveron_Contract_Lot_LotInternalServiceClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: Ru_Zveron_Contract_Lot_LotInternalServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the ru.zveron.contract.lot.LotInternalService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Ru_Zveron_Contract_Lot_LotInternalServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct Ru_Zveron_Contract_Lot_LotInternalServiceNIOClient: Ru_Zveron_Contract_Lot_LotInternalServiceClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Ru_Zveron_Contract_Lot_LotInternalServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the ru.zveron.contract.lot.LotInternalService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Ru_Zveron_Contract_Lot_LotInternalServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol Ru_Zveron_Contract_Lot_LotInternalServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Ru_Zveron_Contract_Lot_LotInternalServiceClientInterceptorFactoryProtocol? { get }

  func makeGetLotsBySellerIDCall(
    _ request: Ru_Zveron_Contract_Lot_ProfileLotsRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Ru_Zveron_Contract_Lot_ProfileLotsRequest, Ru_Zveron_Contract_Lot_ProfileLotsResponse>

  func makeGetLotsByIDCall(
    _ request: Ru_Zveron_Contract_Lot_LotsIdRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Ru_Zveron_Contract_Lot_LotsIdRequest, Ru_Zveron_Contract_Lot_LotsIdResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Ru_Zveron_Contract_Lot_LotInternalServiceAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return Ru_Zveron_Contract_Lot_LotInternalServiceClientMetadata.serviceDescriptor
  }

  public var interceptors: Ru_Zveron_Contract_Lot_LotInternalServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeGetLotsBySellerIDCall(
    _ request: Ru_Zveron_Contract_Lot_ProfileLotsRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Ru_Zveron_Contract_Lot_ProfileLotsRequest, Ru_Zveron_Contract_Lot_ProfileLotsResponse> {
    return self.makeAsyncUnaryCall(
      path: Ru_Zveron_Contract_Lot_LotInternalServiceClientMetadata.Methods.getLotsBySellerId.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetLotsBySellerIdInterceptors() ?? []
    )
  }

  public func makeGetLotsByIDCall(
    _ request: Ru_Zveron_Contract_Lot_LotsIdRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Ru_Zveron_Contract_Lot_LotsIdRequest, Ru_Zveron_Contract_Lot_LotsIdResponse> {
    return self.makeAsyncUnaryCall(
      path: Ru_Zveron_Contract_Lot_LotInternalServiceClientMetadata.Methods.getLotsById.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetLotsByIdInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Ru_Zveron_Contract_Lot_LotInternalServiceAsyncClientProtocol {
  public func getLotsBySellerId(
    _ request: Ru_Zveron_Contract_Lot_ProfileLotsRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Ru_Zveron_Contract_Lot_ProfileLotsResponse {
    return try await self.performAsyncUnaryCall(
      path: Ru_Zveron_Contract_Lot_LotInternalServiceClientMetadata.Methods.getLotsBySellerId.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetLotsBySellerIdInterceptors() ?? []
    )
  }

  public func getLotsById(
    _ request: Ru_Zveron_Contract_Lot_LotsIdRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Ru_Zveron_Contract_Lot_LotsIdResponse {
    return try await self.performAsyncUnaryCall(
      path: Ru_Zveron_Contract_Lot_LotInternalServiceClientMetadata.Methods.getLotsById.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makegetLotsByIdInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct Ru_Zveron_Contract_Lot_LotInternalServiceAsyncClient: Ru_Zveron_Contract_Lot_LotInternalServiceAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: Ru_Zveron_Contract_Lot_LotInternalServiceClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Ru_Zveron_Contract_Lot_LotInternalServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol Ru_Zveron_Contract_Lot_LotInternalServiceClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'getLotsBySellerId'.
  func makegetLotsBySellerIdInterceptors() -> [ClientInterceptor<Ru_Zveron_Contract_Lot_ProfileLotsRequest, Ru_Zveron_Contract_Lot_ProfileLotsResponse>]

  /// - Returns: Interceptors to use when invoking 'getLotsById'.
  func makegetLotsByIdInterceptors() -> [ClientInterceptor<Ru_Zveron_Contract_Lot_LotsIdRequest, Ru_Zveron_Contract_Lot_LotsIdResponse>]
}

public enum Ru_Zveron_Contract_Lot_LotInternalServiceClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "LotInternalService",
    fullName: "ru.zveron.contract.lot.LotInternalService",
    methods: [
      Ru_Zveron_Contract_Lot_LotInternalServiceClientMetadata.Methods.getLotsBySellerId,
      Ru_Zveron_Contract_Lot_LotInternalServiceClientMetadata.Methods.getLotsById,
    ]
  )

  public enum Methods {
    public static let getLotsBySellerId = GRPCMethodDescriptor(
      name: "getLotsBySellerId",
      path: "/ru.zveron.contract.lot.LotInternalService/getLotsBySellerId",
      type: GRPCCallType.unary
    )

    public static let getLotsById = GRPCMethodDescriptor(
      name: "getLotsById",
      path: "/ru.zveron.contract.lot.LotInternalService/getLotsById",
      type: GRPCCallType.unary
    )
  }
}

