//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: auth.proto
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


/// Usage: instantiate `AuthServiceClient`, then call methods of this protocol to make API calls.
public protocol AuthServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: AuthServiceClientInterceptorFactoryProtocol? { get }

  func loginBySocial(
    _ request: LoginBySocialRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<LoginBySocialRequest, MobileToken>

  func loginByPassword(
    _ request: LoginByPasswordRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<LoginByPasswordRequest, MobileToken>

  func phoneLoginInit(
    _ request: PhoneLoginInitRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<PhoneLoginInitRequest, PhoneLoginInitResponse>

  func phoneLoginVerify(
    _ request: PhoneLoginVerifyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<PhoneLoginVerifyRequest, PhoneLoginVerifyResponse>

  func registerByPhone(
    _ request: PhoneRegisterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<PhoneRegisterRequest, MobileToken>

  func verifyToken(
    _ request: VerifyMobileTokenRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<VerifyMobileTokenRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func issueNewTokens(
    _ request: IssueNewTokensRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<IssueNewTokensRequest, MobileToken>

  func issueNewAccessToken(
    _ request: IssueNewTokensRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<IssueNewTokensRequest, TimedToken>
}

extension AuthServiceClientProtocol {
  public var serviceName: String {
    return "ru.zveron.contract.auth.AuthService"
  }

  ///логин через соц сеть
  ///
  /// - Parameters:
  ///   - request: Request to send to LoginBySocial.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func loginBySocial(
    _ request: LoginBySocialRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<LoginBySocialRequest, MobileToken> {
    return self.makeUnaryCall(
      path: AuthServiceClientMetadata.Methods.loginBySocial.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLoginBySocialInterceptors() ?? []
    )
  }

  ///логин по паролю и телефону
  ///
  /// - Parameters:
  ///   - request: Request to send to LoginByPassword.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func loginByPassword(
    _ request: LoginByPasswordRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<LoginByPasswordRequest, MobileToken> {
    return self.makeUnaryCall(
      path: AuthServiceClientMetadata.Methods.loginByPassword.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLoginByPasswordInterceptors() ?? []
    )
  }

  ///попытка логина только по телефону, начальный этап, высылаем запрос в сторонний сервис
  ///на отправку смс/звонка для верификации
  ///
  /// - Parameters:
  ///   - request: Request to send to PhoneLoginInit.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func phoneLoginInit(
    _ request: PhoneLoginInitRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<PhoneLoginInitRequest, PhoneLoginInitResponse> {
    return self.makeUnaryCall(
      path: AuthServiceClientMetadata.Methods.phoneLoginInit.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePhoneLoginInitInterceptors() ?? []
    )
  }

  ///попытка логина только по телефону, второй этап, пробуем провалидировать пришедший код
  ///если пользователь уже есть, возвращаем токены и флаг, что флоу логина
  ///
  /// - Parameters:
  ///   - request: Request to send to PhoneLoginVerify.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func phoneLoginVerify(
    _ request: PhoneLoginVerifyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<PhoneLoginVerifyRequest, PhoneLoginVerifyResponse> {
    return self.makeUnaryCall(
      path: AuthServiceClientMetadata.Methods.phoneLoginVerify.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePhoneLoginVerifyInterceptors() ?? []
    )
  }

  ///последний шаг логина по телефону, если пользователя еще не существует и создаем новый аккаунт
  ///
  /// - Parameters:
  ///   - request: Request to send to RegisterByPhone.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func registerByPhone(
    _ request: PhoneRegisterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<PhoneRegisterRequest, MobileToken> {
    return self.makeUnaryCall(
      path: AuthServiceClientMetadata.Methods.registerByPhone.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRegisterByPhoneInterceptors() ?? []
    )
  }

  ///запрос для верификации текущего токена доступа, передается из апигея в сервис авторизации
  ///потому токены можно передать в метадате
  ///
  /// - Parameters:
  ///   - request: Request to send to VerifyToken.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func verifyToken(
    _ request: VerifyMobileTokenRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<VerifyMobileTokenRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: AuthServiceClientMetadata.Methods.verifyToken.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVerifyTokenInterceptors() ?? []
    )
  }

  ///запрос на получение новых токенов
  ///
  /// - Parameters:
  ///   - request: Request to send to IssueNewTokens.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func issueNewTokens(
    _ request: IssueNewTokensRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<IssueNewTokensRequest, MobileToken> {
    return self.makeUnaryCall(
      path: AuthServiceClientMetadata.Methods.issueNewTokens.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeIssueNewTokensInterceptors() ?? []
    )
  }

  ///запрос на получение нового access токена
  ///
  /// - Parameters:
  ///   - request: Request to send to IssueNewAccessToken.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func issueNewAccessToken(
    _ request: IssueNewTokensRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<IssueNewTokensRequest, TimedToken> {
    return self.makeUnaryCall(
      path: AuthServiceClientMetadata.Methods.issueNewAccessToken.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeIssueNewAccessTokenInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension AuthServiceClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "AuthServiceNIOClient")
public final class AuthServiceClient: AuthServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: AuthServiceClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: AuthServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the ru.zveron.contract.auth.AuthService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: AuthServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct AuthServiceNIOClient: AuthServiceClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: AuthServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the ru.zveron.contract.auth.AuthService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: AuthServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol AuthServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: AuthServiceClientInterceptorFactoryProtocol? { get }

  func makeLoginBySocialCall(
    _ request: LoginBySocialRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<LoginBySocialRequest, MobileToken>

  func makeLoginByPasswordCall(
    _ request: LoginByPasswordRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<LoginByPasswordRequest, MobileToken>

  func makePhoneLoginInitCall(
    _ request: PhoneLoginInitRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<PhoneLoginInitRequest, PhoneLoginInitResponse>

  func makePhoneLoginVerifyCall(
    _ request: PhoneLoginVerifyRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<PhoneLoginVerifyRequest, PhoneLoginVerifyResponse>

  func makeRegisterByPhoneCall(
    _ request: PhoneRegisterRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<PhoneRegisterRequest, MobileToken>

  func makeVerifyTokenCall(
    _ request: VerifyMobileTokenRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<VerifyMobileTokenRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func makeIssueNewTokensCall(
    _ request: IssueNewTokensRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<IssueNewTokensRequest, MobileToken>

  func makeIssueNewAccessTokenCall(
    _ request: IssueNewTokensRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<IssueNewTokensRequest, TimedToken>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension AuthServiceAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return AuthServiceClientMetadata.serviceDescriptor
  }

  public var interceptors: AuthServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeLoginBySocialCall(
    _ request: LoginBySocialRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<LoginBySocialRequest, MobileToken> {
    return self.makeAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.loginBySocial.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLoginBySocialInterceptors() ?? []
    )
  }

  public func makeLoginByPasswordCall(
    _ request: LoginByPasswordRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<LoginByPasswordRequest, MobileToken> {
    return self.makeAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.loginByPassword.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLoginByPasswordInterceptors() ?? []
    )
  }

  public func makePhoneLoginInitCall(
    _ request: PhoneLoginInitRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<PhoneLoginInitRequest, PhoneLoginInitResponse> {
    return self.makeAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.phoneLoginInit.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePhoneLoginInitInterceptors() ?? []
    )
  }

  public func makePhoneLoginVerifyCall(
    _ request: PhoneLoginVerifyRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<PhoneLoginVerifyRequest, PhoneLoginVerifyResponse> {
    return self.makeAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.phoneLoginVerify.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePhoneLoginVerifyInterceptors() ?? []
    )
  }

  public func makeRegisterByPhoneCall(
    _ request: PhoneRegisterRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<PhoneRegisterRequest, MobileToken> {
    return self.makeAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.registerByPhone.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRegisterByPhoneInterceptors() ?? []
    )
  }

  public func makeVerifyTokenCall(
    _ request: VerifyMobileTokenRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<VerifyMobileTokenRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.verifyToken.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVerifyTokenInterceptors() ?? []
    )
  }

  public func makeIssueNewTokensCall(
    _ request: IssueNewTokensRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<IssueNewTokensRequest, MobileToken> {
    return self.makeAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.issueNewTokens.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeIssueNewTokensInterceptors() ?? []
    )
  }

  public func makeIssueNewAccessTokenCall(
    _ request: IssueNewTokensRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<IssueNewTokensRequest, TimedToken> {
    return self.makeAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.issueNewAccessToken.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeIssueNewAccessTokenInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension AuthServiceAsyncClientProtocol {
  public func loginBySocial(
    _ request: LoginBySocialRequest,
    callOptions: CallOptions? = nil
  ) async throws -> MobileToken {
    return try await self.performAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.loginBySocial.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLoginBySocialInterceptors() ?? []
    )
  }

  public func loginByPassword(
    _ request: LoginByPasswordRequest,
    callOptions: CallOptions? = nil
  ) async throws -> MobileToken {
    return try await self.performAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.loginByPassword.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLoginByPasswordInterceptors() ?? []
    )
  }

  public func phoneLoginInit(
    _ request: PhoneLoginInitRequest,
    callOptions: CallOptions? = nil
  ) async throws -> PhoneLoginInitResponse {
    return try await self.performAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.phoneLoginInit.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePhoneLoginInitInterceptors() ?? []
    )
  }

  public func phoneLoginVerify(
    _ request: PhoneLoginVerifyRequest,
    callOptions: CallOptions? = nil
  ) async throws -> PhoneLoginVerifyResponse {
    return try await self.performAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.phoneLoginVerify.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePhoneLoginVerifyInterceptors() ?? []
    )
  }

  public func registerByPhone(
    _ request: PhoneRegisterRequest,
    callOptions: CallOptions? = nil
  ) async throws -> MobileToken {
    return try await self.performAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.registerByPhone.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeRegisterByPhoneInterceptors() ?? []
    )
  }

  public func verifyToken(
    _ request: VerifyMobileTokenRequest,
    callOptions: CallOptions? = nil
  ) async throws -> SwiftProtobuf.Google_Protobuf_Empty {
    return try await self.performAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.verifyToken.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVerifyTokenInterceptors() ?? []
    )
  }

  public func issueNewTokens(
    _ request: IssueNewTokensRequest,
    callOptions: CallOptions? = nil
  ) async throws -> MobileToken {
    return try await self.performAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.issueNewTokens.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeIssueNewTokensInterceptors() ?? []
    )
  }

  public func issueNewAccessToken(
    _ request: IssueNewTokensRequest,
    callOptions: CallOptions? = nil
  ) async throws -> TimedToken {
    return try await self.performAsyncUnaryCall(
      path: AuthServiceClientMetadata.Methods.issueNewAccessToken.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeIssueNewAccessTokenInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct AuthServiceAsyncClient: AuthServiceAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: AuthServiceClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: AuthServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

public protocol AuthServiceClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'loginBySocial'.
  func makeLoginBySocialInterceptors() -> [ClientInterceptor<LoginBySocialRequest, MobileToken>]

  /// - Returns: Interceptors to use when invoking 'loginByPassword'.
  func makeLoginByPasswordInterceptors() -> [ClientInterceptor<LoginByPasswordRequest, MobileToken>]

  /// - Returns: Interceptors to use when invoking 'phoneLoginInit'.
  func makePhoneLoginInitInterceptors() -> [ClientInterceptor<PhoneLoginInitRequest, PhoneLoginInitResponse>]

  /// - Returns: Interceptors to use when invoking 'phoneLoginVerify'.
  func makePhoneLoginVerifyInterceptors() -> [ClientInterceptor<PhoneLoginVerifyRequest, PhoneLoginVerifyResponse>]

  /// - Returns: Interceptors to use when invoking 'registerByPhone'.
  func makeRegisterByPhoneInterceptors() -> [ClientInterceptor<PhoneRegisterRequest, MobileToken>]

  /// - Returns: Interceptors to use when invoking 'verifyToken'.
  func makeVerifyTokenInterceptors() -> [ClientInterceptor<VerifyMobileTokenRequest, SwiftProtobuf.Google_Protobuf_Empty>]

  /// - Returns: Interceptors to use when invoking 'issueNewTokens'.
  func makeIssueNewTokensInterceptors() -> [ClientInterceptor<IssueNewTokensRequest, MobileToken>]

  /// - Returns: Interceptors to use when invoking 'issueNewAccessToken'.
  func makeIssueNewAccessTokenInterceptors() -> [ClientInterceptor<IssueNewTokensRequest, TimedToken>]
}

public enum AuthServiceClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "AuthService",
    fullName: "ru.zveron.contract.auth.AuthService",
    methods: [
      AuthServiceClientMetadata.Methods.loginBySocial,
      AuthServiceClientMetadata.Methods.loginByPassword,
      AuthServiceClientMetadata.Methods.phoneLoginInit,
      AuthServiceClientMetadata.Methods.phoneLoginVerify,
      AuthServiceClientMetadata.Methods.registerByPhone,
      AuthServiceClientMetadata.Methods.verifyToken,
      AuthServiceClientMetadata.Methods.issueNewTokens,
      AuthServiceClientMetadata.Methods.issueNewAccessToken,
    ]
  )

  public enum Methods {
    public static let loginBySocial = GRPCMethodDescriptor(
      name: "LoginBySocial",
      path: "/ru.zveron.contract.auth.AuthService/LoginBySocial",
      type: GRPCCallType.unary
    )

    public static let loginByPassword = GRPCMethodDescriptor(
      name: "LoginByPassword",
      path: "/ru.zveron.contract.auth.AuthService/LoginByPassword",
      type: GRPCCallType.unary
    )

    public static let phoneLoginInit = GRPCMethodDescriptor(
      name: "PhoneLoginInit",
      path: "/ru.zveron.contract.auth.AuthService/PhoneLoginInit",
      type: GRPCCallType.unary
    )

    public static let phoneLoginVerify = GRPCMethodDescriptor(
      name: "PhoneLoginVerify",
      path: "/ru.zveron.contract.auth.AuthService/PhoneLoginVerify",
      type: GRPCCallType.unary
    )

    public static let registerByPhone = GRPCMethodDescriptor(
      name: "RegisterByPhone",
      path: "/ru.zveron.contract.auth.AuthService/RegisterByPhone",
      type: GRPCCallType.unary
    )

    public static let verifyToken = GRPCMethodDescriptor(
      name: "VerifyToken",
      path: "/ru.zveron.contract.auth.AuthService/VerifyToken",
      type: GRPCCallType.unary
    )

    public static let issueNewTokens = GRPCMethodDescriptor(
      name: "IssueNewTokens",
      path: "/ru.zveron.contract.auth.AuthService/IssueNewTokens",
      type: GRPCCallType.unary
    )

    public static let issueNewAccessToken = GRPCMethodDescriptor(
      name: "IssueNewAccessToken",
      path: "/ru.zveron.contract.auth.AuthService/IssueNewAccessToken",
      type: GRPCCallType.unary
    )
  }
}

