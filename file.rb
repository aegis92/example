Dir.chdir("files")

10.times do |i|

	i += 1

	File.open("#{i}.txt", "w") { |file|
		file.write("#{i}th stuff")
	}

end