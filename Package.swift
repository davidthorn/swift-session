// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DTSession",
    products: [
        .library(
            name: "DTSession",
            targets: ["DTSession"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DTSession",
            dependencies: []),
        .testTarget(
            name: "DTSessionTests",
            dependencies: ["DTSession"]),
    ]
)
