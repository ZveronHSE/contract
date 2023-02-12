// swift-tools-version:5.6
import PackageDescription

let packageName = "zveron-grpc-swift"
let productName = "ZveronGRPC"

let apigatewayTargetName = "ApigatewayGRPC"
let authTargetName = "AuthGRPC"
let blacklistTargetName = "BlacklistGRPC"
let favoritesTargetName = "FavoritesGRPC"
let lotTargetName = "LotGRPC"
let object-storageTargetName = "Object-storageGRPC"
let parameterTargetName = "ParameterGRPC"
let profileTargetName = "ProfileGRPC"

import PackageDescription

let packageDependencies: [Package.Dependency] = [
    .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.13.2")
]

let package = Package(
    name: packageName,
    products: [
        .library(
            name: productName,
            targets: [
                apigatewayTargetName,
                authTargetName,
                blacklistTargetName,
                favoritesTargetName,
                lotTargetName,
                object-storageTargetName,
                parameterTargetName,
                profileTargetName,
            ]
        )
    ],
    dependencies: packageDependencies,
    targets: [
        .target(name: apigatewayTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: authTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: blacklistTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: favoritesTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: lotTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: object-storageTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: parameterTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: profileTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
    ]
)
