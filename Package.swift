// swift-tools-version: 6.1
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
            dependencies: [],
            path: "Sources/DTSession"
        )
    ]
)
