
Pod::Spec.new do |s|
  s.name         = "RenJiaoIFly"

  s.version      = "1.0.0"

  s.homepage     = "https://github.com/Liuruohan/RenJiaoIFly"

  s.author       = { "cntapple1" => "beifengliang@163.com" }

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.summary      = "A Library for iOS to use for RenJiaoiFly."

  
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/Liuruohan/RenJiaoIFly" }
  
  s.vendored_frameworks = "iflyMSC.framework"

  s.subspec "ise" do |ise|

    ise.source_files  = "ise/*.{h,m}"

  end

  s.subspec "pcm" do |pcm|

    pcm.source_files  = "pcm/*.{h,m}"

  end

  s.subspec "results" do |results|

    results.source_files  = "ise/results/*.{h,m}"

  end
  
  s.frameworks = "CoreLocation","CoreTelephony","AddressBook","AudioToolbox","AVFoundation","SystemConfiguration","Foundation","UIKit","AddressBook","QuartzCore","CoreGraphics"

  s.ios.library = 'z'

  s.requires_arc = true
end
