print("downloading files")
wget http://aws-minecraft-files.s3-website-us-east-1.amazonaws.com/files/_file_list.txt

for line in io.lines("/_file_list.txt") do
  print(line)
end


