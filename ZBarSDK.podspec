Pod::Spec.new do |spec|

spec.name         = "ZBarSDK"

spec.version      = "1.3.1"
  
spec.platform     = :ios
  
spec.license      = "GNU LGPL 2.1"
  
spec.summary      = "QR and barcode scan library."

spec.homepage     = "http://zbar.sourceforge.net/"
  
spec.author       = {
"Jeff Brown": "spadix@users.sourceforge.net"
}
  
spec.source       = {
"git": "https://github.com/ZBar/ZBar.git",
"tag": "iPhoneSDK-1.3.1"
}
  
spec.description  = <<-DESC
ZBar is an open source software suite for reading bar codes from various sources, such as video streams, image files and raw intensity sensors. It supports many popular symbologies (types of bar codes) including EAN-13/UPC-A, UPC-E, EAN-8, Code 128, Code 39, Interleaved 2 of 5 and QR Code.
DESC
  
spec.public_header_files = [
"iphone/**/**/*.h",
"include/*.h"
]
  
spec.source_files  = [
"include/zbar.h",
"zbar/**/*.h",
"iphone/*.h",
"iphone/include/**/*.h",
"zbar/{config,decoder,error,image,img_scanner,refcnt,scanner,symbol}.c",
"zbar/decoder/{codabar,code39,code93,code128,databar,ean,i25,qr_finder}.c",
"zbar/qrcode/*.c",
"iphone/*.m"
]

spec.resources    = "iphone/res/{zbar-*.png,zbar-help.html}"

spec.frameworks = [
  "AVFoundation",
  "CoreGraphics",
  "CoreMedia",
  "CoreVideo",
  "QuartzCore"
]

spec.libraries = "iconv"

spec.xcconfig = {
"EXCLUDED_SOURCE_FILE_NAMES[sdk=iphoneos*][arch=*]": "ZBarReaderViewImpl_Simulator.m",
"EXCLUDED_SOURCE_FILE_NAMES[sdk=iphonesimulator*][arch=*]": "ZBarReaderViewImpl_Capture.m ZBarCaptureReader.m",
"GCC_PREPROCESSOR_DEFINITIONS": "NDEBUG=1"
}

spec.prefix_header_file = "iphone/include/prefix.pch"

spec.compiler_flags = "-w"

spec.requires_arc = false

end
