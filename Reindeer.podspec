Pod::Spec.new do |s|
  s.name             = "Reindeer"
  s.summary          = "XML in Swift"
  s.version          = "0.1.0"
  s.homepage         = "https://github.com/onmyway133/Reindeer"
  s.license          = 'MIT'
  s.author           = { "Khoa Pham" => "onmyway133@gmail.com" }
  s.source           = {
    :git => "https://github.com/wemap/Reindeer.git",
    :tag => s.version.to_s
  }
  s.social_media_url = 'https://twitter.com/onmyway133'

  s.ios.deployment_target = '8.0'
  #s.osx.deployment_target = '10.9'
  #s.tvos.deployment_target = '9.2'

  s.requires_arc = true
  s.source_files = 'Sources/**/*.swift'

  s.preserve_paths = 'CocoaPods/**/*'
  s.pod_target_xcconfig = {
    #'SWIFT_INCLUDE_PATHS[sdk=macosx*]'           => '$(PODS_ROOT)/Reindeer/CocoaPods/macosx',
    'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'         => '$(PODS_ROOT)/Reindeer/CocoaPods/iphoneos',
    'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'  => '$(PODS_ROOT)/Reindeer/CocoaPods/iphonesimulator',
    #'SWIFT_INCLUDE_PATHS[sdk=appletvos*]'        => '$(PODS_ROOT)/Reindeer/CocoaPods/appletvos',
    #'SWIFT_INCLUDE_PATHS[sdk=appletvsimulator*]' => '$(PODS_ROOT)/Reindeer/CocoaPods/appletvsimulator',
    #'SWIFT_INCLUDE_PATHS[sdk=watchos*]'          => '$(PODS_ROOT)/Reindeer/CocoaPods/watchos',
    #'SWIFT_INCLUDE_PATHS[sdk=watchsimulator*]'   => '$(PODS_ROOT)/Reindeer/CocoaPods/watchsimulator'
  }

  s.library = "xml2"
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

end
