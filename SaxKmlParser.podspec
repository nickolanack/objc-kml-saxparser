Pod::Spec.new do |s|

  s.name         = "SaxKmlParser"
  s.version      = "0.0.1"
  s.summary      = "sax kml parser"

  s.description  = <<-DESC
  A SAX KML parser for rendering kml files on mapkit
                   DESC

  s.homepage     = "https://github.com/nickolanack/objc-kml-saxparser"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "nickolanack" => "nickblackwell82@gmail.com" }

  s.platform     = :ios
 
 
  s.source       = { :git => "https://github.com/nickolanack/objc-kml-saxparser.git", :tag => 'v0.0.1'}

  s.source_files  = "Classes", "SaxKmlParser/*.{h,m}"


end
