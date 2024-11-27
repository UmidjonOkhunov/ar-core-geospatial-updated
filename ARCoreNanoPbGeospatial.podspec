Pod::Spec.new do |s|
    s.name         = 'ARCoreNanoPbGeospatial'
    s.version      = '1.0.0'
    s.summary      = 'A summary of ARCoreNanoPbGeospatial'
    s.description  = <<-DESC
                      A more detailed description of ARCoreNanoPbGeospatial.
                      DESC
    s.homepage     = 'https://developers.google.com/ar/'
    s.license      = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
    s.author       = { 'Umidjon Okhunov' => 'umidjonokhunov0@gmail.com' }
    s.source       = { :git => 'https://github.com/UmidjonOkhunov/ar-core-geospatial-updated.git', :tag => s.version.to_s }
    s.platform     = :ios, '15.5'
    s.swift_version = '5.5'
  
    s.source_files = 'Geospatial/**/*.{swift,h,m}'
    s.public_header_files = 'Geospatial/Sources/**/*.h'
    s.resources = '{GARSession,AugmentedFaces,Semantics}/Resources/**/*'
  
    s.subspec 'Base' do |ss|
      ss.source_files = 'Base/**/*.{swift,h,m}'
      ss.public_header_files = 'Base/Sources/**/*.h'
    end

    s.subspec 'Geospatial' do |ss|
      ss.source_files = 'Geospatial/**/*.{swift,h,m}'
      ss.public_header_files = 'Geospatial/Sources/**/*.h'
    end
 
    s.subspec 'TFShared' do |ss|
      ss.source_files = 'TFShared/**/*.{swift,h,m}'
      ss.public_header_files = 'TFShared/Sources/**/*.h'
    end
  
    s.dependency 'nanopb', '~> 3.30910'
    s.dependency 'GoogleDataTransport', '~> 10.1.0'
    s.dependency 'GTMSessionFetcher', '~> 4.0.0'
    s.dependency 'Firebase/RemoteConfig', '~> 11.4.2'
  end
