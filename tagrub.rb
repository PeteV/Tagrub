
#!/bin/ruby

require 'taglib'

path = "your path"

Dir.foreach("#{path}") do |file|
TagLib::MPEG::File.open("#{path}#{file}") do |fileref|
tag = fileref.tag

  if file =~ /mp3/
  File.rename("#{path}#{file}","#{path}#{tag.title}-#{tag.artist}.mp3")
  end

end

end
