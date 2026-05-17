// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-BidMachine-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "BidMachineAdapter", targets: ["BidMachineAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/bidmachine/BidMachine-SPM", exact: "3.7.0"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "BidMachineAdapter",
      dependencies: [
        "BidMachineAdapterSDK",
        .product(name: "BidMachine", package: "BidMachine-SPM"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "BidMachineAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/bidmachine-adapter/5.6.0/ISBidMachineAdapter5.6.0.zip",
      checksum: "9dfe87a096b6adb3c66dacde5c6ab9e145326dba90db1fdb2f4308478fa63c4c"
    )
  ]
)
