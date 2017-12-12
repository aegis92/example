Dir.chdir("files2")

files = Dir.entries(Dir.pwd).reject { |name| name[0] == '.' }

files.each do |file|
	File.rename(file, 'mulcam_'+file)
end