f = File.open("./Provinces.xml")
f.lines.each do |line|
	if line =~ /ID=/
		a=line.split("\"")
		print a[1]
		print a[3]
	end
end
f.close
f = File.open("./Cities.xml")
f.lines.each do |line|
	if line =~ /ID=/
		a=line.split("\"")
		print a[1]
		print a[3]
		print a[5]
		puts ""
	end
end
f.close
f = File.open("./Districts.xml")
f.lines.each do |line|
	if line =~ /ID=/
		a=line.split("\"")
		print a[1]
		print a[3]
		print a[5]
		puts ""
	end
end
f.close