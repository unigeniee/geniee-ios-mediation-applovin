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
            url: "https://github.com/unigeniee/geniee-ios-mediation-applovin/releases/download/8.3.1/GenieeMediationAppLovin.8.3.1.zip",
            checksum: "df52c70be1bc1d06b3d74f69adc08780a97b56719748ced4fd6960728cf518f2"
        )
    ]
)
