Pod::Spec.new do |s|

s.name         = "DTSession"
s.version      = "0.1.1"
s.summary      = "A summary of your framework"
s.swift_version = '5.0'
s.description  = <<-DESC
A framework that describes the URLSession through a protocol.
DESC

s.homepage     = "git@github.com:davidthorn/swift-session.git"

s.license      = { :type => "MIT" }

s.author       = { "David Thorn" => "david.thorn221278@googlemail.com" }

s.ios.deployment_target  = '9.0'
s.osx.deployment_target  = '10.15'

s.source       = { :git => "https://github.com/davidthorn/swift-session.git", :tag => "#{s.version}" }

s.source_files  = "Sources/DTSession/**/*.{swift}"

end

