# TCMPPExtLive

TCMPPExtLive is a Swift Package Manager package for the iOS platform.

It provides the live streaming (player & pusher) extension for TCMPP mini programs.

## Requirements

- iOS 12.0+
- Xcode 12.0+
- Swift 5.5+

## Installation

### Swift Package Manager

1. In Xcode, select **File > Add Packages...**
2. Enter the repository URL: `https://github.com/TCMPP-Team/TCMPPExtLive.git`
3. Select the version rule (Up to Next Major Version is recommended)
4. Click **Add Package**

## Dependencies

This package does not declare its dependencies. You must integrate the following
by yourself, otherwise the build will fail at link time with undefined symbols:

| Dependency | How to integrate |
| --- | --- |
| [TCMPPSDK](https://github.com/TCMPP-Team/TCMPPSDK.git) | Swift Package Manager |
| TXLiteAVSDK_Professional | CocoaPods, or add the xcframework manually (no official SwiftPM package) |

## Setup

Add `-ObjC` to **Build Settings > Linking > Other Linker Flags** of your app target,
so that the Objective-C categories inside the static library are loaded correctly.

## Documentation

For detailed API documentation, please refer to the comments in the header file.

See also the [TCMPP extension modules guide](https://www.tencentcloud.com/document/product/1219/61432).
