Pod::Spec.new do |s|
  s.name        = "CocoaMQTT"
  s.version     = "1.3.0-rc.1"
  s.summary     = "MQTT v3.1.1 client library for iOS and OS X written with Swift 5,  with Objective C integration""
  s.homepage    = "https://github.com/trvd1707/CocoaMQTT.git"
  s.license     = { :type => "MIT" }
  s.authors     = { "Feng Lee" => "feng@emqtt.io", "CrazyWisdom" => "zh.whong@gmail.com", "Alex Yu" => "alexyu.dc@gmail.com", "Teresa Van Dusen" => "teresa.vandusen@nielsen.com" }

  s.swift_version = "5.0"
  s.requires_arc = true
  s.osx.deployment_target = "10.12"
  s.ios.deployment_target = "10.0"
  s.tvos.deployment_target = "10.0"
  # s.watchos.deployment_target = "2.0"
  s.source   = { :git => "https://github.com/emqx/CocoaMQTT.git", :tag => "1.3.0-rc.1"}
  s.default_subspec = 'Core'
  s.subspec 'Core' do |ss|
    ss.dependency "CocoaAsyncSocket", "~> 7.6.3"
    ss.source_files = "Source/*.swift"
    ss.exclude_files = "Source/CocoaMQTTWebSocket.swift"
  end
  
  s.subspec 'WebSockets' do |ss|
    ss.dependency "CocoaMQTT/Core"
    ss.dependency "Starscream", "~> 3.0.2"
    ss.source_files = "Source/CocoaMQTTWebSocket.swift"
  end
end
