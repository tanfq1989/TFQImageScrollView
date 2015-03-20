#
# Be sure to run `pod lib lint TFQImageScollView.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "TFQImageScollView"
  s.version          = "0.0.2"
  s.summary          = "TFQImageScollView is a view show image with scoll"
  s.description      = <<-DESC
                       An optional longer description of TFQImageScollView

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/<GITHUB_USERNAME>/TFQImageScollView"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "tanfq1989" => "tanfq1989@hotmail.com" }
  s.source           = { :git => "https://github.com/tanfq1989/TFQImageScollView.git", :tag => '0.0.2' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'TFQImageScollView' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
