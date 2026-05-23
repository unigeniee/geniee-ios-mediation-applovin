// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeMediationAppLovin",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GenieeMediationAppLovin",
            targets: ["GenieeMediationAppLovinTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/unigeniee/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
        ),
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
            from: "13.0.0"
        )
    ],
    targets: [
        .target(
            name: "GenieeMediationAppLovinTarget",
            dependencies: [
                "GenieeMediationAppLovin",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "Sources/GenieeMediationAppLovinTarget"
        ),
        .binaryTarget(
            name: "GenieeMediationAppLovin",
            url: "https://github.com/unigeniee/geniee-ios-mediation-applovin/releases/download/8.3.100/GenieeMediationAppLovin.8.3.1.0.zip",
            checksum: "3bc7bbe8b5d3b8247527700bfc8c9b7c04cb52aa60e65791744e961a14d0dd16"
        )
    ]
)
