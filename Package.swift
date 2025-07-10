// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "Glitter",
    platforms: [
        .macOS(.v13),
    ],
    products: [
        .library(
            name: "Glitter",
            targets: ["Glitter"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sparkle-project/Sparkle", from: "2.7.0"),
        .package(url: "https://github.com/inseven/licensable", from: "0.0.13"),
    ],
    targets: [
        .target(
            name: "Glitter",
            dependencies: [
                .product(name: "Licensable", package: "licensable"),
                .product(name: "Sparkle", package: "Sparkle"),
            ],
            resources: [
                .process("Resources")
            ]),
        .testTarget(
            name: "GlitterTests",
            dependencies: ["Glitter"]
        ),
    ]
)
