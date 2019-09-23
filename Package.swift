// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JulieanneSDK",
    products: [
        .library(
            name: "JulieanneSDK",
            targets: ["JulieanneSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/BrickWaterStudios/SailSDK.git", .branch( "master")),
    ],
    targets: [
        .target(
            name: "JulieanneSDK",
            dependencies: ["SailSDK"]),
        .testTarget(
            name: "JulieanneSDKTests",
            dependencies: ["JulieanneSDK"]),
    ]
)
