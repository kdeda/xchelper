// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "idd-xc-helper",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "IDDXCHelper",
            targets: ["IDDXCHelper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kdeda/idd-swift-commons.git", from: "1.4.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "IDDXCHelper",
            dependencies: [
                .product(name: "SwiftCommons", package: "idd-swift-commons")
            ]),
        .testTarget(
            name: "IDDXCHelperTests",
            dependencies: [
                "IDDXCHelper"
            ]),
    ]
)
