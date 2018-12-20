Pod::Spec.new do |s|
  s.name        = "CocoaMQTTGW"
  s.version     = "1.1.4"
  s.summary     = "MQTT v3.1.1 client library for iOS and OS X written with Swift 4 with changes to work as an SN gateway"
  s.homepage    = "ssh://git@adlm.nielsen.com:7999/cw/cocoamqtt.git"
  s.license     = { :type => "MIT" }
  s.authors     = { "Feng Lee" => "feng@emqtt.io", "CrazyWisdom" => "zh.whong@gmail.com", "Alex Yu" => "alexyu.dc@gmail.com", "Teresa Van Dusen" => "teresa.vandusen@nielsen.com" }

  s.swift_version = "4.2"
  s.requires_arc = true
  s.osx.deployment_target = "10.9"
  s.ios.deployment_target = "9.0"
  s.tvos.deployment_target = "9.0"
  # s.watchos.deployment_target = "2.0"
  s.source   = { :git => "ssh://git@adlm.nielsen.com:7999/cw/cocoamqtt.git", :tag => "1.1.3"}
  s.source_files = "Source/{*.h}", "Source/*.swift"
  s.dependency "CocoaAsyncSocket", "~> 7.6.3"
end
