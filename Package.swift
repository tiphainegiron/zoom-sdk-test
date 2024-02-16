// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZoomSdkTest",
    platforms: [.iOS(.v14)],
    products: [
        .library(
          name: "ZoomSdkTest",
          targets: ["MobileRTC"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "MobileRTC",
            url: "https://github.com/tiphainegiron/zoom-sdk-test/releases/download/1.0.0/MobileRTC.xcframework.zip",
            checksum: "ce1e091ef875db0fd516eae2a2a73dfef132911c586eb09c6065f738b3e35ec8"
        )
    ]
)

