// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//let package = Package(
//    name: "ZoomSDK",
//    products: [
//        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .library(
//            name: "ZoomSDK",
//            targets: ["ZoomSDK"]),
//    ],
//    dependencies: [
//        // Dependencies declare other packages that this package depends on.
//        // .package(url: /* package url */, from: "1.0.0"),
//    ],
//    targets: [
//        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
//        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(
//            name: "ZoomSDK",
//            dependencies: ["MobileRTC"]),
//        .binaryTarget(name: "MobileRTC", path: "frameworks/MobileRTC.xcframework")
//    ]
//)
    
let package = Package(
    name: "ZoomSdkTest",
    platforms: [.iOS(.v14)],
    products: [
        .library(
          name: "ZoomSdkTest",
          targets: ["ZoomSdkTest"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ZoomSdkTest",
            dependencies: [
                "MobileRTC"
            ],
            resources: [
                .copy("Resources/MobileRTCResources.bundle")
            ]
        ),
        .binaryTarget(
            name: "MobileRTC",
            url: "https://github.com/tiphainegiron/zoom-sdk-test/releases/download/2.0.0/MobileRTC.xcframework.zip",
            checksum: "ce1e091ef875db0fd516eae2a2a73dfef132911c586eb09c6065f738b3e35ec8"
        )
    ]
)

