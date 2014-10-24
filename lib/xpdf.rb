module Xpdf
  ROOT = File.expand_path('../..', __FILE__)
  BIN  = File.join(ROOT, 'bin')

  Dir.entries(BIN).each do |fn|
    const_set(fn.upcase, File.join(BIN, fn)) unless fn.start_with?('.')
  end
end
