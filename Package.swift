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
            url: "https://github.com/didit-protocol/didit-sdk-ios/releases/download/3.0.1/DiditSDK.xcframework.zip",
            checksum: "0fef7379af4fcc8a9f4d1098146fc82e9690d2dfee841d34c37dba350c502e36"
        ),
        .binaryTarget(
            name: "OpenSSLBinary",
            url: "https://github.com/didit-protocol/didit-sdk-ios/releases/download/3.0.1/OpenSSL.xcframework.zip",
            checksum: "c926afaa304d376f1020da2cfafb1f9561c4f289d8980e0dd312202fb89e42d0"
        )
    ]
)
