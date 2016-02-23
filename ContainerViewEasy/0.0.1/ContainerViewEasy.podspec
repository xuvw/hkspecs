#
#  Be sure to run `pod spec lint ContainerViewEasy.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "ContainerViewEasy"
  s.version      = "0.0.1"
  s.summary      = "方便使用类似UITableView，UICollectionView这样的复杂控件"

  s.description  = <<-DESC
  方便使用类似UITableView，UICollectionView这样的复杂控件，将其中一些通用方法加以抽离方便使用。
                   DESC

  s.homepage     = "https://github.com/xuvw/ContainerViewEasy.git"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "heke" => "1052110478@qq.com" }

  s.social_media_url   = "https://github.com/xuvw"

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/xuvw/ContainerViewEasy.git", :tag => "0.0.1" }
  
  s.source_files  = "ContainerViewEasy/CVE/**/HK{CollectionView,TableView}{DataSource,DD}.{h,m}"
  
  s.framework  = "UIKit"
  s.requires_arc = true
  
  s.subspec 'CVEBase' do |ss|
      ss.source_files = 'ContainerViewEasy/CVE/CVEBase/**/{NSObject,UIView}+CVEExts.{h,m}'
  end
end
