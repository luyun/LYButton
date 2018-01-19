Pod::Spec.new do |s|
  s.name         = "LYButton"
  s.version      = "1.0.0"
  s.summary      = "LYButton+Extension"
  s.homepage     = "https://github.com/luyun/LYButton"
  s.license      = "MIT"
  s.author       = { "luyun" => "https://github.com/luyun/LYButton" }
  s.requires_arc = true
  s.source       = { :git => "https://github.com/luyun/LYButton.git", :tag => s.version.to_s }
  # s.source       = { :git => "https://github.com/luyun/LYButton.git", :commit => "87d85c0876127ea315390d64ee7842084550edca" }
  s.platform     = :ios, "7.0"
  s.source_files = "LYButton/**/*.{h,m}"
end

