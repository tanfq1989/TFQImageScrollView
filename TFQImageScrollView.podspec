#
# Be sure to run `pod lib lint TFQImageScrollView.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "TFQImageScrollView"
  s.version          = "0.1.0"
  s.summary          = "TFQImageScrollView costum view."
  s.description      = <<-DESC
                       

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/tanfq1989/TFQImageScrollView"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "tanfq1989" => "tanfq1989@hotmail.com" }
  s.source           = { :git => "https://github.com/tanfq1989/TFQImageScrollView.git", :tag => '0.1.0' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

s.source_files = 'Pod/Classes/*.{h,m}'
#s.exclude_files = 'Pod/Classes/SDWebImage/*.*'
  s.resource_bundles = {
    'TFQImageScrollView' => ['Pod/Assets/*.png']
  }

#s.public_header_files = 'Pod/Classes/*.h'
  s.frameworks = 'UIKit','SDWebImage'
  # s.dependency 'AFNetworking', '~> 2.3'
end
