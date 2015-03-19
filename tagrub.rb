
//simple use of taglib to batch rename mp3 files
Copyright (C) 2014  Pete Verschueren

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

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
