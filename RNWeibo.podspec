require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNWeibo"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.author       = { package["author"]["name"] => package["author"]["email"] }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/yuanshan/react-native-weibo.git", :tag => "v#{s.version}" }

  s.source_files  = "ios/**/*.{h,m}"
  s.dependency "React-Core"
  s.vendored_libraries = "ios/libWeiboSDK/libWeiboSDK.a"
  s.requires_arc = true
  s.frameworks = 'SystemConfiguration','CoreTelephony','WebKit'
  s.library = 'sqlite3','c++','z'
end
