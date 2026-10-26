// swift-tools-version:5.6
import PackageDescription
// Binary-only wrapper. The implementation repository remains private.
let package = Package(name: "EdgePilot", platforms: [.iOS(.v15), .macOS(.v12)],
    products: [.library(name: "EdgePilot", targets: ["EdgePilot"])],
    targets: [.binaryTarget(name: "EdgePilot", url: "https://edgepilot-ai-sdk.web.app/apple/0.1.0-alpha.2/EdgePilot-0.1.0-alpha.2.xcframework.zip", checksum: "393df8a0ced127d7a5d3f2d0648f22b35456d0c0964beb03d79ba66b28e08a2a")])
