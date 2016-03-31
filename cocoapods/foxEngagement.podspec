#
# Be sure to run `pod lib lint foxEngagement.podspec" to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "foxEngagement"
  s.version          = "1.0.0"
  s.summary          = "FOX Engagement SDK for iOS."
  s.description      = <<-DESC
                       Pod integration for F.O.X Engagement SDK
                       DESC
  s.homepage         = "https://github.com/cyber-z/public-foxengagement-ios-sdk"
  s.license          = {
    :type => "Copyright",
    :text => "Copyright © CyberZ, inc. All Rights Reserved."
  }
  s.author           = "CyberZ inc."
  s.source           = {:http =>
      "https://github.com/cyber-z/public-foxengagement-ios-sdk/releases/download/#{s.version}/FOXEngagement_iOS_#{s.version}.zip"}

  s.platform     = :ios, "7.0"
  s.requires_arc = false

  s.source_files = "**/*.{h,m}"
  s.vendored_libraries = "**/*.a"

  s.public_header_files = "**/*.h"

  s.frameworks = "Foundation", "Security", "AdSupport", "SystemConfiguration"
  s.weak_framework = "ImageIO"
  s.xcconfig = { "LIBRARY_SEARCH_PATHS" => "$(PODS_ROOT)/#{s.name}" }

end
