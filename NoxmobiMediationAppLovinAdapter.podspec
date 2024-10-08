
Pod::Spec.new do |spec|

  spec.name         = "NoxmobiMediationAppLovinAdapter"
  spec.version      = "13.0.0.0" # Mark
  spec.summary      = "Noxmobi ad mediation adapter for AppLovin."
  spec.homepage     = "https://github.com/NoxmobiSDK/NoxmobiMediationAppLovinAdapter"
  spec.license      = "MIT"
  spec.author       = { "Chong" => "zhanglovesan@gmail.com" }
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/NoxmobiSDK/NoxmobiMediationAppLovinAdapter.git", :tag => "#{spec.version}" }
  spec.source_files = "NoxmobiMediationAppLovinAdapter.framework/Headers/*.{h}"
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  spec.ios.vendored_frameworks = 'NoxmobiMediationAppLovinAdapter.framework'
  spec.resource_bundles = {spec.name => 'NoxmobiMediationAppLovinAdapter.framework/PrivacyInfo.xcprivacy'}
  spec.requires_arc = true
  spec.swift_versions = %w(5.0)
  spec.dependency "AppLovinSDK", "13.0.0"
end
