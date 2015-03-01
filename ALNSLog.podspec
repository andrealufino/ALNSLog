Pod::Spec.new do |s|
  s.name         = “ALNSLog”
  s.version      = “1.0”
  s.summary      = “NSLog with advanced features”
  s.description  = “Simplify debugging for iOS apps”
  s.license      = { :type => 'MIT', :file => 'LICENSE.md’ }
  s.authors      = { “Andrea Mario Lufino“ => “andrea.lufino@me.com” }
  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/andrealufino/ALNSLog.git”, :tag => s.version.to_s }
  s.source_files  = ‘*.{h,m}’
  s.requires_arc = true
end
