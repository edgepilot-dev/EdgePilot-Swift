// swift-tools-version:5.6
import PackageDescription
// Binary-only wrapper. The implementation repository remains private.
let package = Package(name: "EdgePilot", platforms: [.iOS(.v15), .macOS(.v12)],
    products: [.library(name: "EdgePilot", targets: ["EdgePilot"])],
    targets: [.binaryTarget(name: "EdgePilot", url: "https://edgepilot-ai-sdk.web.app/apple/0.1.0-alpha.1/EdgePilot-0.1.0-alpha.1.xcframework.zip", checksum: "97090e54c64218639030b6e8f84afdae265483f087d3a10624a89c7cc0010d70")])
