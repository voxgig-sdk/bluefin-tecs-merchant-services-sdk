// swift-tools-version:5.9
//
// BluefinTecsMerchantServices SDK - SwiftPM manifest. Zero runtime dependencies (Foundation +
// the vendored Voxgig Struct port under Sources/ProjectNameSDK/Struct).
import PackageDescription

let package = Package(
    name: "BluefinTecsMerchantServicesSdk",
    products: [
        .library(name: "BluefinTecsMerchantServicesSdk", targets: ["BluefinTecsMerchantServicesSdk"]),
    ],
    targets: [
        .target(
            name: "BluefinTecsMerchantServicesSdk",
            path: "Sources/ProjectNameSDK"),
        .testTarget(
            name: "BluefinTecsMerchantServicesSdkTests",
            dependencies: ["BluefinTecsMerchantServicesSdk"],
            path: "Tests/ProjectNameSDKTests"),
    ]
)
