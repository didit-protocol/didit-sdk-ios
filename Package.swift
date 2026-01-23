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
            targets: ["DiditSDK", "DiditSDKBinary"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/AndyQ/NFCPassportReader.git", from: "2.3.0")
    ],
    targets: [
        .binaryTarget(
            name: "DiditSDKBinary",
            url: "https://github.com/didit-protocol/didit-sdk-ios/releases/download/0.0.1/DiditSDK.xcframework.zip",
            checksum: "7ae0754c5714ad451641f6cf8f2ad72574cda11d0a7e4e0c374dd021ec2443de"
        ),
        .target(
            name: "DiditSDK",
            dependencies: [
                "DiditSDKBinary",
                .product(name: "NFCPassportReader", package: "NFCPassportReader")
            ],
            path: "Sources/DiditSDK"
        )
    ]
)
