dirs = Dir["**"]

res = {}
dirs.each do |d|
  images = Dir["#{d}/**"].map do |img|
    {:title => "title", :file => img}
  end
  res[d] = images
end

puts res.to_yaml
