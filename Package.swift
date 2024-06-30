// swift-tools-version: 5.9
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
            targets: ["Dynamic","Ordering"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        // Se define la estructura de la librería
        .target(
            name: "Dynamic"),
        .target(
            name: "Ordering"),
        .testTarget(
            name: "DynamicTest",
            dependencies: ["Dynamic"]),
    ]
)
