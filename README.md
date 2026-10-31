# EdgePilot for Swift

Binary Swift Package Manager distribution for EdgePilot.

## Install

In Xcode, choose **File → Add Package Dependencies** and enter:

```
https://github.com/edgepilot-dev/EdgePilot-Swift
```

Choose exact version **0.1.0-alpha.3** and add **EdgePilot** to your app.
Build with Xcode 26 or later. Apps can target iOS 15 or later; local generation
needs supported Apple Intelligence hardware running iOS 26 or later.

## Initialize once, choose a task when generating

```swift
import Foundation
import EdgePilot

// In a @MainActor async setup function:
let client = try await AppleEdgePilot.initialize(
    configuration: try ClientConfiguration(projectId: "<PROJECT_ID>", sdkKey: "<SDK_KEY>")
)
let result = try await client.generate(taskId: "action-items", input: "Sam will send the proposal tomorrow.")
// Keep the client for the app owner's lifetime; await client.close() at shutdown.
```

The first call loads the task; later calls use cached configuration. The SDK
refreshes loaded tasks while the app is active. Add `taskVersion: 1` to a call to
pin a version. Cloud use requires explicit `TaskConstraints(allowCloud: true)`
and an enabled project cloud configuration.

[Set up your iOS app](https://edgepilot-ai.web.app/guide/ios) ·
[Project setup](https://edgepilot-ai.web.app/guide) ·
[Advanced configuration](https://edgepilot-ai.web.app/guide/reference)

This is a pre-release SDK. The Apple framework is unsigned. The versioned binary
checksum is pinned in `Package.swift`; published versions are immutable.
