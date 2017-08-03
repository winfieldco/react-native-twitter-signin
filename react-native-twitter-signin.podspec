require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "react-native-twitter-signin"
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.homepage       = "https://github.com/winfieldco/react-native-twitter-signin"
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platform       = :ios, "7.0"
  s.source         = { :git => "#{package_json["repository"]["url"]}.git", :tag => "v#{s.version}" }
  s.source_files   = 'ios/*.{h,m}'
  s.dependency 'React'
  s.dependency 'TwitterKit'
  s.dependency 'TwitterCore'  

end
