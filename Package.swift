// swift-tools-version:5.5
import PackageDescription

// TCMPPExtLive - the live streaming (player & pusher) extension for TCMPP mini programs.
//
// This module ships no resources at all (no xcassets / xib / strings / bundle;
// the ".png" strings in the source are just runtime temp file names built from
// NSUUID), and it does not use any C++ standard library symbol. Therefore no
// wrapper target is needed and the product exposes the binaryTarget directly.
//
// Dependencies are intentionally NOT declared here, consistent with the other
// TCMPP extension packages (TCSASExtVodPlayer, TCSASExtNFC, ...). Integrate the
// following yourself, otherwise the build fails at link time with undefined symbols:
//   - TCMPPSDK: the main SDK, https://github.com/TCMPP-Team/TCMPPSDK.git
//   - TXLiteAVSDK_Professional: no official SwiftPM package; use CocoaPods or add
//     the xcframework manually
let package = Package(
    name: "TCMPPExtLive",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "TCMPPExtLive",
            targets: ["TCMPPExtLive"]
        )
    ],
    dependencies: [
        
    ],
    targets: [
        .binaryTarget(
            name: "TCMPPExtLive",
            url: "https://tmf-warehouse-1314481471.cos.ap-beijing.myqcloud.com/tcmpp/ios-sdk/TCMPPExtLive/2.2.3/TCMPPExtLive_2.2.3.zip",
            checksum: "7be66e734c6509434c71b0215e44f5ca1afce6e94c6c2830a1122187551596ba"
        )
    ]
)
