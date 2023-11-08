//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: apigateway_v2.proto
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


/// Usage: instantiate `ApigatewayV2ServiceClient`, then call methods of this protocol to make API calls.
public protocol ApigatewayV2ServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: ApigatewayV2ServiceClientInterceptorFactoryProtocol? { get }

  func callApiGatewayV2(
    _ request: ApiGatewayV2Request,
    callOptions: CallOptions?
  ) -> UnaryCall<ApiGatewayV2Request, ApigatewayV2Response>
}

extension ApigatewayV2ServiceClientProtocol {
  public var serviceName: String {
    return "ru.zveron.contract.apigateway.ApigatewayV2Service"
  }

  ///Calls apigateway with a v2 request
  ///
  /// - Parameters:
  ///   - request: Request to send to CallApiGatewayV2.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func callApiGatewayV2(
    _ request: ApiGatewayV2Request,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<ApiGatewayV2Request, ApigatewayV2Response> {
    return self.makeUnaryCall(
      path: ApigatewayV2ServiceClientMetadata.Methods.callApiGatewayV2.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCallApiGatewayV2Interceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension ApigatewayV2ServiceClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "ApigatewayV2ServiceNIOClient")
public final class ApigatewayV2ServiceClient: ApigatewayV2ServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: ApigatewayV2ServiceClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: ApigatewayV2ServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the ru.zveron.contract.apigateway.ApigatewayV2Service service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: ApigatewayV2ServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct ApigatewayV2ServiceNIOClient: ApigatewayV2ServiceClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: ApigatewayV2ServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the ru.zveron.contract.apigateway.ApigatewayV2Service service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: ApigatewayV2ServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol ApigatewayV2ServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: ApigatewayV2ServiceClientInterceptorFactoryProtocol? { get }

  func makeCallApiGatewayV2Call(
    _ request: ApiGatewayV2Request,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<ApiGatewayV2Request, ApigatewayV2Response>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension ApigatewayV2ServiceAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return ApigatewayV2ServiceClientMetadata.serviceDescriptor
  }

  public var interceptors: ApigatewayV2ServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeCallApiGatewayV2Call(
    _ request: ApiGatewayV2Request,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<ApiGatewayV2Request, ApigatewayV2Response> {
    return self.makeAsyncUnaryCall(
      path: ApigatewayV2ServiceClientMetadata.Methods.callApiGatewayV2.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCallApiGatewayV2Interceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension ApigatewayV2ServiceAsyncClientProtocol {
  public func callApiGatewayV2(
    _ request: ApiGatewayV2Request,
    callOptions: CallOptions? = nil
  ) async throws -> ApigatewayV2Response {
    return try await self.performAsyncUnaryCall(
      path: ApigatewayV2ServiceClientMetadata.Methods.callApiGatewayV2.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCallApiGatewayV2Interceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct ApigatewayV2ServiceAsyncClient: ApigatewayV2ServiceAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: ApigatewayV2ServiceClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: ApigatewayV2ServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol ApigatewayV2ServiceClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'callApiGatewayV2'.
  func makeCallApiGatewayV2Interceptors() -> [ClientInterceptor<ApiGatewayV2Request, ApigatewayV2Response>]
}

public enum ApigatewayV2ServiceClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "ApigatewayV2Service",
    fullName: "ru.zveron.contract.apigateway.ApigatewayV2Service",
    methods: [
      ApigatewayV2ServiceClientMetadata.Methods.callApiGatewayV2,
    ]
  )

  public enum Methods {
    public static let callApiGatewayV2 = GRPCMethodDescriptor(
      name: "CallApiGatewayV2",
      path: "/ru.zveron.contract.apigateway.ApigatewayV2Service/CallApiGatewayV2",
      type: GRPCCallType.unary
    )
  }
}
