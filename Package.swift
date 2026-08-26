// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-BidMachine-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "BidMachineAdapter", targets: ["BidMachineAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/bidmachine/BidMachine-SPM", exact: "3.8.0"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "BidMachineAdapter",
      dependencies: [
        "BidMachineAdapterSDK",
        .product(name: "BidMachine", package: "BidMachine-SPM"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "BidMachineAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/bidmachine-adapter/5.8.0/ISBidMachineAdapter5.8.0.zip",
      checksum: "ec8f194e7baba537a86df8499778e88a19a960d89e49ad1e4228b4fe9a056308"
    )
  ]
)
