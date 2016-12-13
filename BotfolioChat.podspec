Pod::Spec.new do |s|

s.name         = "BotfolioChat"
s.version      = "0.0.1"
s.summary      = "A short description of BotfolioChat."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
s.description  = "sd"

s.homepage     = "http://EXAMPLE/BotfolioChat"


# ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Licensing your code is important. See http://choosealicense.com for more info.
#  CocoaPods will detect a license file if there is a named LICENSE*
#  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
#

# s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


# ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the authors of the library, with email addresses. Email addresses
#  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
#  accepts just a name if you'd rather not provide an email address.
#
#  Specify a social_media_url where others can refer to, for example a twitter
#  profile URL.
#

s.author             = { "Aleks Mutlu" => "aleksmutlu@gmail.com" }
# Or just: s.author    = "Aleks Mutlu"
# s.authors            = { "Aleks Mutlu" => "aleksmutlu@gmail.com" }
# s.social_media_url   = "http://twitter.com/Aleks Mutlu"

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
