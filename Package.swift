// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swift-Algorithm-Example",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6), .macCatalyst(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        // Se define la visibilidad de la librería
        .library(
            name: "Swift-Algorithm-Example",
            targets: ["Dynamic","Ordering","Util"]
        ),
    ],
    dependencies: [
      .package(url: "https://github.com/apple/swift-testing.git", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        // Se define la estructura de la librería
        .target(
            name: "Dynamic"),
        .target(
            name: "Ordering"),
        .target(
            name: "Util"),
        .testTarget(
            name: "DynamicTest",
            dependencies: ["Dynamic"
                           ,.product(name: "Testing", package: "swift-testing")
                          ]),
       .testTarget(
            name: "OrderingTest",
            dependencies: ["Ordering"
                          ,"Util"
                          ,.product(name: "Testing", package: "swift-testing")
                          ]),
    ]
)
