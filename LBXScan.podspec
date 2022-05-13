Pod::Spec.new do |s|
    s.name         = 'LBXScan'
    s.version      = '2.5.1.4'
    s.summary      = 'ios scan wrapper'
    s.homepage     = 'https://github.com/MxABC/LBXScan'
    s.license      = 'MIT'
    s.authors      = {'lbxia' => 'lbxia20091227@foxmail.com'}
    s.platform     = :ios, '8.0'
    s.source       = {:git => 'https://github.com/MxABC/LBXScan.git', :tag => s.version}
    s.requires_arc = true
    s.prefix_header_contents = '#import <Foundation/Foundation.h>'


    s.source_files = 'LBXScan/*.{h,m}','LBXScan/LBXNative/*.{h,m}','LBXScan/UI/*.{h,m}'
    s.resource     = 'LBXScan/UI/CodeScan.bundle'
    s.ios.frameworks = 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreVideo', 'ImageIO', 'QuartzCore'
    s.prefix_header_contents = '#import "LBXScanNative.h"','#import "ZXingWrapper.h"','#import "LBXScanView.h"'

end
