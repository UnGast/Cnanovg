// swift-tools-version:5.2

import PackageDescription

#if os(macOS)
    let linkedGL = LinkerSetting.linkedFramework("OpenGL")
#elseif os(Linux)
    let linkedGL = LinkerSetting.linkedLibrary("GL")
#endif

let package = Package(
    name: "Cnanovg",
    products: [
        .library(
            name: "CnanovgGL3",
            targets: ["CnanovgGL3"]
        )
    ],
    targets: [
        .target(
            name: "Cnanovg",
            sources: ["nanovg/src/nanovg.c"]),
        .target(
            name: "CnanovgGL3",
            dependencies: ["Cnanovg"],
            linkerSettings: [linkedGL])
    ]
)
