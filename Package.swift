// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CustomFrameworksPackage",
    platforms: [
          .macOS(.v12), .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CustomFrameworksPackage",
            targets: ["CustomFrameworksPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-numerics.git", .upToNextMajor(from: "1.0.0"))
    
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "CustomFrameworksPackage",
            path: "./Sources/CustomFrameworksPackage.xcframework")
        
    ]
)
