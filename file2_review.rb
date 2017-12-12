Dir.chdir("files2")

30.times do |i|

	i += 1

	File.open("#{i}.txt", "a+") { |file| 
		file.write("#{i}th 좋은 아침 입니다")
	}

end