// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DiditSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "DiditSDK",
            targets: ["DiditSDKBinary", "OpenSSLBinary"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "DiditSDKBinary",
            url: "https://github.com/didit-protocol/didit-sdk-ios/releases/download/3.0.0/DiditSDK.xcframework.zip",
            checksum: "6a1d9d774ccc0aa602f7461b7254696fe8662b7900df783d8a75d22642037b19"
        ),
        .binaryTarget(
            name: "OpenSSLBinary",
            url: "https://github.com/didit-protocol/didit-sdk-ios/releases/download/3.0.0/OpenSSL.xcframework.zip",
            checksum: "d3113f20f6cd9f9efb5ca4a882452a6b1254ba3aa7cdbfa2b03f6fdd72a90634"
        )
    ]
)
