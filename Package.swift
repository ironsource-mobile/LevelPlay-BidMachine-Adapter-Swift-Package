// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-BidMachine-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "BidMachineAdapter", targets: ["BidMachineAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/bidmachine/BidMachine-SPM", exact: "3.6.1"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/bidmachine-adapter/5.5.0/ISBidMachineAdapter5.5.0.zip",
      checksum: "45ea303427f1a794c4f0c7f41f415f52056af085beeed095e5d3ac462bf3a2fd"
    )
  ]
)
