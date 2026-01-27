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
            url: "https://github.com/didit-protocol/didit-sdk-ios/releases/download/0.0.7/DiditSDK.xcframework.zip",
            checksum: "f15a78cc1fd837d378be18cba65d7a91729d048363ab54c254db032f6188cca9"
        ),
        .binaryTarget(
            name: "OpenSSLBinary",
            url: "https://github.com/didit-protocol/didit-sdk-ios/releases/download/0.0.7/OpenSSL.xcframework.zip",
            checksum: "80c2aa3ab50a818f16f490fd0b711f83575ee4c3397f5e2ef5f39fa01c543679"
        )
    ]
)
