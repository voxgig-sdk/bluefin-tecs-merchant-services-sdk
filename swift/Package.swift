// swift-tools-version:5.9
//
// BluefinTecsMerchantServices SDK - SwiftPM manifest. The runtime itself is dependency-free
// (Foundation + the vendored Voxgig Struct port under
// Sources/ProjectNameSDK/Struct); declared feature/target deps (if any)
// appear below.
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
