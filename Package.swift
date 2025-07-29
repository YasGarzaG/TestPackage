// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestPackage",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Producto binario para FrameworkApi
        .library(
            name: "FrameworkTestApi",
            targets: ["FrameworkTestApi"]
        ),
        // Producto binario para FrameworkUI que depende de FrameworkApi
        .library(
            name: "FrameworkTestUI",
            targets: ["FrameworkTestUI"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "FrameworkTestApi",
            url: "https://github.com/YasGarzaG/FrameworkTestApi/releases/download/v1.0.0/FrameworkTestApi.xcframework.zip",
            checksum: "52c5ecb1688ddbb8a3338c376183371c5a7b3df057d8971927d93fbf35ec81b5"
        ),
        .binaryTarget(
            name: "FrameworkTestUI",
            url: "https://github.com/YasGarzaG/FrameworkTestUI/releases/download/v1.0.0/FrameworkTestUI.xcframework.zip",
            checksum: "72fb1735ef346ccbad4c8d7143624c0a1d1f3a461af9067cde6a3ec62a4d38de"
        )
    ]
)

