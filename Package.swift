// swift-tools-version:5.6
import PackageDescription
// Binary-only wrapper. The implementation repository remains private.
let package = Package(name: "EdgePilot", platforms: [.iOS(.v15), .macOS(.v12)],
    products: [.library(name: "EdgePilot", targets: ["EdgePilot"])],
    targets: [.binaryTarget(name: "EdgePilot", url: "https://edgepilot-ai-sdk.web.app/apple/0.1.0-alpha.3/EdgePilot-0.1.0-alpha.3.xcframework.zip", checksum: "add580313a2f146a2d6109c81808252683f8bfbd7f5f0a8f7ac245a9761d7def")])
