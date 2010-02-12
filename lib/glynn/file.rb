require 'ftools'

module Glynn
  class File    
		FILE = Module::File
		def self.is_bin?(file)
			s = (FILE.read(file, FILE.stat(file).blksize) || "").split(//)
			((s.size - s.grep(" ".."~").size) / s.size.to_f) > 0.30
		end
  end
end
