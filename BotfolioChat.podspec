Pod::Spec.new do |s|

s.name         = "BotfolioChat"
s.version      = "1.0.0"
s.summary      = "The main iOS framework of Botfolio ChatBot platform."
s.description  = "iOS Framework for developers who wants to new chatbots using Botfolio platform."

s.homepage     = "http://botfol.io"
# s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

s.author             = { "Botfolio" => "info@botfol.io" }
s.social_media_url   = "http://twitter.com/botfolioapp"

s.platform     = :ios, "9.0"
s.source = { :git => 'https://github.com/botfolio/botfolio_ios_sdk.git', :tag => s.version }
s.public_header_files = 'BotfolioChat.framework/Headers/*.h'
s.ios.vendored_frameworks = 'BotfolioChat.framework'
s.preserve_paths = 'BotfolioChat.framework'
s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }

s.dependency "Alamofire"
s.dependency "KeychainAccess"
s.dependency "Kingfisher"
s.dependency "TTTAttributedLabel"
s.dependency "NYTPhotoViewer"
s.dependency "SwiftR"

end
