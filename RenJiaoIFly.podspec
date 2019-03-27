
Pod::Spec.new do |s|
  s.name         = "RenJiaoIFly"

  s.version      = "1.1.1"

  s.homepage     = "https://github.com/Liuruohan/RenJiaoIFly"

  s.author       = { "RenJiaoIFly" => "RenJiao" }

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.summary      = "自己的讯飞语音私有库，别随便导入。"

  
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/Liuruohan/RenJiaoIFly.git" }
  
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
  
  s.frameworks = "CoreLocation","CoreTelephony","AddressBook","AudioToolbox","AVFoundation","SystemConfiguration","Foundation","UIKit","QuartzCore","CoreGraphics","AddressBookUI","Contacts","ContactsUI"

  s.ios.library = 'z'

  s.requires_arc = true
end
