#
# Be sure to run `pod lib lint AdvanceSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    
    s.name             = 'YunSuanSDK'
    s.version          = '5.2.1'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.summary          = 'iOS YunSuanSDK'
    s.description      = <<-DESC
    免费透明的流量变现神器 
    600+ 移动媒体选择的广告商业化管理工具，定制私有的移动媒体商业化解决方案。优质上游资源一网打尽，接入方式快速透明稳定。支持流量分发、渠道策略、精准投放、数据报表、排期管理、广告审核等全流程业务场景。
    DESC
    
    s.homepage         = 'http://www.yunsuan.com/'
    s.author           = { 'yunsuan' => 'http://www.yunsuan.com/' }
    s.source           = { :git => 'https://github.com/shengxiang/yunsuan_ios_sdk.git', :tag => s.version.to_s }
    
    s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
    s.platform     = :ios, "12.0"
    s.requires_arc = true
    s.static_framework = true
    
    s.resource_bundles = {
         'YunSuanSDK' => ['YunSuanSDK/Assets/**.*']
       }
    
    # 默认的使用模块
    s.default_subspec = 'Core'
    
    s.subspec 'Core' do |core|
        core.source_files = 'YunSuanSDK/Classes/Core/**/*.{h,m}'
        core.frameworks = 'UIKit', 'Foundation', 'AdSupport'
    end
    
    s.subspec 'AdSpot' do |adSpot|
        adSpot.dependency 'YunSuanSDK/Core'
        adSpot.source_files = 'YunSuanSDK/Classes/AdSpot/**/*.{h,m}'
    end
    
    s.subspec 'MercuryAdapter' do |mer|
        mer.dependency 'YunSuanSDK/AdSpot'
        mer.dependency 'MercurySDK'
        mer.source_files = 'YunSuanSDK/Classes/Adapters/Mercury/**/*.{h,m}'
    end
    
    s.subspec 'CSJAdapter' do |csj|
        csj.dependency 'YunSuanSDK/AdSpot'
        csj.dependency 'Ads-CN-Beta/BUAdSDK'
        csj.source_files = 'YunSuanSDK/Classes/Adapters/CSJ/**/*.{h,m}'
    end
    
    s.subspec 'GDTAdapter' do |gdt|
        gdt.dependency 'YunSuanSDK/AdSpot'
        gdt.dependency 'GDTMobSDK'
        gdt.source_files =  'YunSuanSDK/Classes/Adapters/GDT/**/*.{h,m}'
    end
     
    s.subspec 'KSAdapter' do |ks|
        ks.dependency 'YunSuanSDK/AdSpot'
        ks.dependency 'KSAdSDK'
        ks.source_files = 'YunSuanSDK/Classes/Adapters/KS/**/*.{h,m}'
    end
    
    s.subspec 'BDAdapter' do |bd|
        bd.dependency 'YunSuanSDK/AdSpot'
        bd.dependency 'BaiduMobAdSDK'
        bd.source_files =  'YunSuanSDK/Classes/Adapters/BD/**/*.{h,m}'
    end
    
    s.subspec 'TanxAdapter' do |tanx|
        tanx.dependency 'YunSuanSDK/AdSpot'
        tanx.dependency 'TanxSDK'
        tanx.source_files =  'YunSuanSDK/Classes/Adapters/TANX/**/*.{h,m}'
    end
    
    s.subspec 'SigmobAdapter' do |sigmob|
        sigmob.dependency 'YunSuanSDK/AdSpot'
        sigmob.dependency 'SigmobAd-iOS'
        sigmob.source_files =  'YunSuanSDK/Classes/Adapters/Sigmob/**/*.{h,m}'
    end
    
#    s.subspec 'GroMoreBidding' do |bidding|
#        bidding.dependency 'YunSuanSDK/AdSpot'
#        bidding.dependency 'GroMoreBiddingSDK', '1.2.0'
#        bidding.source_files = 'YunSuanSDK/Classes/GroMoreBidding/**/*.{h,m}'
#    end

end
