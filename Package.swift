// swift-tools-version:5.6
import PackageDescription

let packageName = "zveron-grpc-swift"
let productName = "ZveronGRPC"

let addressTargetName = "AddressGRPC"
let apigatewayTargetName = "ApigatewayGRPC"
let authTargetName = "AuthGRPC"
let blacklistTargetName = "BlacklistGRPC"
let chatTargetName = "ChatGRPC"
let coreTargetName = "CoreGRPC"
let favoritesTargetName = "FavoritesGRPC"
let lotTargetName = "LotGRPC"
let objectstorageTargetName = "ObjectstorageGRPC"
let orderTargetName = "OrderGRPC"
let parameterTargetName = "ParameterGRPC"
let profileTargetName = "ProfileGRPC"
let specialistTargetName = "SpecialistGRPC"

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
                addressTargetName,
                apigatewayTargetName,
                authTargetName,
                blacklistTargetName,
                chatTargetName,
                coreTargetName,
                favoritesTargetName,
                lotTargetName,
                objectstorageTargetName,
                orderTargetName,
                parameterTargetName,
                profileTargetName,
                specialistTargetName,
            ]
        )
    ],
    dependencies: packageDependencies,
    targets: [
        .target(name: addressTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: apigatewayTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: authTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: blacklistTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: chatTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: coreTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: favoritesTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: lotTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: objectstorageTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: orderTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: parameterTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: profileTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: specialistTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
    ]
)
