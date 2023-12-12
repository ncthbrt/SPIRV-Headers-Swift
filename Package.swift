// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Copyright 2016-2021 The Khronos Group Inc.
// SPDX-License-Identifier: Apache-2.0

import PackageDescription

let package = Package(
    name: "SPIRV-Headers-Swift",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPIRV-Headers-Swift",
            targets: ["SPIRV-Headers-Swift"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: "https://github.com/ncthbrt/glm", branch: "master"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SPIRV-Headers-Swift",
            dependencies: [],
            path: ".",
            exclude: ["CMakeLists.txt",
                      "CODE_OF_CONDUCT.adoc",
                      "LICENSE",
                      "WORKSPACE",
                      "SECURITY.md",
                      "README.md",
                      "BUILD.bazel",
                      "BUILD.gn",
                      "tools",
                      "test",
                      "tests",
                      "cmake",
                      "format_all.sh",
                      "gn",
                      ".github",
            ],
            publicHeadersPath: "include/spirv/unified1",
            cxxSettings: [
                .define("SPIRV_CROSS_C_API_CPP", to: "0"), // According to the docs, it is deprecated
                .define("SPIRV_CROSS_C_API_GLSL", to: "1"),
                .define("SPIRV_CROSS_C_API_HLSL", to: "1"),
                .define("SPIRV_CROSS_C_API_MSL", to: "1"),
                .define("SPIRV_CROSS_C_API_REFLECT", to: "1"), // JSON
            ]),
    ],
    cxxLanguageStandard: .cxx20
)
