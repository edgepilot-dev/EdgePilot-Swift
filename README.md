# EdgePilot for Swift

Binary Swift Package Manager distribution for EdgePilot. The SDK implementation
is maintained in a separate private repository.

## Install

In Xcode, choose **File → Add Package Dependencies** and enter:

```
https://github.com/edgepilot-dev/EdgePilot-Swift
```

Choose version **0.1.0-alpha.1**, then add the **EdgePilot** product to your app.
Build with Xcode 26 or later. Apps can target iOS 15 or later; local Apple
Intelligence generation needs a supported device running iOS 26 or later.

[Set up your iOS app](https://edgepilot-ai.web.app/guide/ios) ·
[Project setup](https://edgepilot-ai.web.app/guide) ·
[Advanced configuration](https://edgepilot-ai.web.app/guide/reference)

This is a pre-release SDK. The Apple framework is unsigned. The release contains
no model weights or provider credentials. Cloud calls require your project's
provider setup and your app's explicit permission; AI evaluation is separate.

The versioned binary checksum is pinned in `Package.swift`. Released versions are
immutable; fixes are published as a new version.
