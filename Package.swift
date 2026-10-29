// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "QcSdkUnityAdapterDmg", defaultLocalization: "en", platforms: [.iOS(.v17)],

    products: [
        .library(name: "QcSdkUnityAdapterDmg", targets: ["QcSdkUnityAdapterDmg", "QcSdkUnityAdapterDmgSupport"])
    ],

    dependencies: [
        .package(url: "https://github.com/YuFengChen77/QcSdkCore.git", exact: "1.1.5"),
        .package(url: "https://github.com/YuFengChen77/QcSdkUnityBridgeSwift.git", exact: "1.1.2")
    ],

    targets: [
        .binaryTarget(name: "QcSdkUnityAdapterDmg", url: "https://github.com/YuFengChen77/QcSdkUnityAdapterDmg/releases/download/1.1.2/QcSdkUnityAdapterDmg-1.1.2.xcframework.zip", checksum: "58d408124843b3c2ba86fbaeacc466d5a5df967a1902b2a2190e735be60f7f9f"),

        .target(name: "QcSdkUnityAdapterDmgSupport", dependencies: ["QcSdkUnityAdapterDmg", .product(name: "QcSdkCore", package: "qcsdkcore"), .product(name: "QcSdkUnityBridgeSwift", package: "qcsdkunitybridgeswift")], path: "QcSdkUnityAdapterDmg", sources: ["Sources"], resources: [.process("Resources")])
    ]
)
