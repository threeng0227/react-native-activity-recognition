
# Pod::Spec.new do |s|
#   s.name         = "RNActivityRecognition"
#   s.version      = "1.0.0"
#   s.summary      = "RNActivityRecognition"
#   s.description  = <<-DESC
#                   RNActivityRecognition
#                    DESC
#   s.homepage     = ""
#   s.license      = "MIT"
#   # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
#   s.author             = { "author" => "author@domain.cn" }
#   s.platform     = :ios, "7.0"
#   s.source       = { :git => "https://github.com/author/RNActivityRecognition.git", :tag => "master" }
#   s.source_files  = "RNActivityRecognition/**/*.{h,m}"
#   s.requires_arc = true


#   s.dependency "React"
#   #s.dependency "others"

# end

require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|

  s.name           = package['name']
  s.version        = package['version']
  s.summary        = package['description']
  s.homepage       = package['repository']['url']
  s.license        = package['license']
  s.author         = package['author']
  s.source         = { :git => s.homepage, :tag => 'v#{s.version}' }

  s.requires_arc   = true
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'

  s.preserve_paths = 'README.md', 'package.json', 'index.js'
  s.source_files   = 'ios/*.{h,m}'

  s.dependency 'React-Core'

end
