module Xpdf
  Root = File.expand_path('../..', __FILE__)
  Bin  = File.join(Root, 'bin')

  Executables = Dir.entries(Bin).inject({}) { |h, fn|
    h[fn.to_sym] = File.join(Bin, fn) unless fn.start_with?('.')
    h
  }
end
