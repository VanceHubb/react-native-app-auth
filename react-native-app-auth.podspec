require 'json'
package = JSON.parse(File.read("package.json"))

Pod::Spec.new do |s|
  s.name           = package["name"].split("/").last
  s.version        = package["version"]
  s.summary        = package['description']
  s.author         = "Branding Brand"
  s.license        = package["license"]
  s.homepage       = package["homepage"]
  s.platform       = :ios, "9.0"
  s.source       = { :git => "https://github.com/brandingbrand/react-native-app-auth.git", :tag => "master" }
  s.source_files  = "ios/*.{h,m}"

  s.dependency "React"
  s.dependency "AppAuth"
end
