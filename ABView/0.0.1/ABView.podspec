Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '9.0'
s.name = "ABView"
s.summary = "ABView shows a background and animates it"
s.requires_arc = true
s.version = "0.0.1"
s.license = { :type => "MIT", :file => "LICENSE" }
s.author = { "Saheb Roy" => "theioscracker@gmail.com" }
s.homepage = "https://github.com/SahebRoy92/ABView"
s.source = { :git => "https://github.com/SahebRoy92/ABView.git", :tag => "#{s.version}"}
s.framework = "UIKit"
s.source_files = "ABView/**/*.{swift}"
s.resources = "ABView/**/*.{png,jpeg,jpg,storyboard,xib}"
end
