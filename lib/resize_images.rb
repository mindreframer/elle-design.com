#!/usr/bin/env ruby

require 'dragonfly'
originals = Dir['original/*']

app = Dragonfly[:images].configure_with(:imagemagick)
path = File.expand_path(File.dirname(__FILE__))
###### Install smusher gem and optimize the folders by hand.


# Dir.mkdir('my_thumbs') unless File.exists?('my_thumbs')
# originals.each do |f|
#   file_name = File.basename(f)
#   img = app.fetch_file("#{path}/#{f}")
#   img.thumb('100x100').encode(:jpg, '-quality 80').to_file("my_thumbs/#{file_name}")
# end
#
# Dir.mkdir('my_middle') unless File.exists?('my_middle')
# originals.each do |f|
#   file_name = File.basename(f)
#   img = app.fetch_file("#{path}/#{f}")
#   img.thumb('450x450').encode(:jpg, '-quality 80').to_file("my_middle/#{file_name}")
# end
#
# Dir.mkdir('my_big') unless File.exists?('my_big')
# originals.each do |f|
#   file_name = File.basename(f)
#   img = app.fetch_file("#{path}/#{f}")
#   img.thumb('800x800').encode(:jpg, '-quality 80').to_file("my_big/#{file_name}")
# end
#
