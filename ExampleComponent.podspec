Pod::Spec.new do |s|
  s.name = "ExampleComponent"

  s.version = "0.0.3"
  s.summary = "An example how to prepare Cocoapod Pod."
  s.homepage = "https://github.com/paweldudek/example-cocoapods-component"
  s.license      = { :file => 'LICENSE.txt', :type => 'MIT' }
  s.author = { "Pawel Dudek" => "pawel@dudek.mobi" }

  s.source = { :git => "https://github.com/paweldudek/example-cocoapods-component.git", :tag => "#{s.version}" }

  s.platform = :ios, '7.0'
  s.source_files = 'Classes', 'Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  s.resources = "Resources/*.png"
  s.frameworks = 'CoreLocation', 'CFNetwork'
  s.requires_arc = true
  s.xcconfig = { 'OTHER_LDFLAGS' => '-all_load' }
  s.dependency 'AFNetworking'
end
