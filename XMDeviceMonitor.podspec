#
# Be sure to run `pod lib lint XMDeviceMonitor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XMDeviceMonitor'
  s.version          = '1.0.0'
  s.summary          = 'Monitor the rotation direction of equipment By CoreMotion Frame(通过CoreMotion框架，监控设备旋转方向)'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        Monitor the rotation direction of equipment By CoreMotion Frame(通过CoreMotion框架，监控设备旋转方向)
                       DESC

  s.homepage         = 'https://github.com/ixmwl/XMDeviceMonitor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ixmwl' => 'ixmwl510@163.com' }
  s.source           = { :git => 'https://github.com/ixmwl/XMDeviceMonitor.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'XMDeviceMonitor/Classes/**/*'
  
  # s.resource_bundles = {
  #   'XMDeviceMonitor' => ['XMDeviceMonitor/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
