// swift-tools-version:5.6
import PackageDescription

let packageName = "zveron-grpc-swift"
let productName = "ZveronGRPC"

let addressTargetName = "AddressGRPC"
let blacklistTargetName = "BlacklistGRPC"
let favoritesTargetName = "FavoritesGRPC"
let lotTargetName = "LotGRPC"
let parameterTargetName = "ParameterGRPC"

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
                blacklistTargetName,
                favoritesTargetName,
                lotTargetName,
                parameterTargetName,
            ]
        )
    ],
    dependencies: packageDependencies,
    targets: [
        .target(name: addressTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: blacklistTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: favoritesTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: lotTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
        .target(name: parameterTargetName, dependencies: [.product(name:"GRPC", package: "grpc-swift")]),
    ]
)
