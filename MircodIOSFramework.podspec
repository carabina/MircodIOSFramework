
Pod::Spec.new do |s|
  s.name             = 'MircodIOSFramework'
  s.version          = '0.1.0'
  s.summary          = 'Simple helper for the work with devices.’
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/MariMiMari/MircodIOSFramework'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MariMiMari' => 'exit' }
  s.source           = { :git => 'https://github.com/MariMiMari/MircodIOSFramework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MircodIOSFramework/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MircodIOSFramework' => ['MircodIOSFramework/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
