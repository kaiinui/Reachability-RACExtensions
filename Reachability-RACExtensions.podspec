Pod::Spec.new do |s|
  s.name         = "Reachability-RACExtensions"
  s.version      = "0.1.0"
  s.summary      = "Reachability in Reactive way!"
  s.homepage     = "https://github.com/kaiinui/Reachability-RACExtensions"
  s.author       = { "kaiinui" => "lied.der.optik@gmail.com" }
  s.source       = { :git => "https://github.com/kaiinui/Reachability+RACExtensions.git", :tag => "v0.1.0" }
  s.source_files  = "ReachabilityRACExt/Classes/**/*.{h,m}"
  s.requires_arc = true
  s.platform = "ios", '7.0'
  s.dependency "ReactiveCocoa"
  s.dependency "Reachability"
end
