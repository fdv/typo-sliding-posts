source = File.join(RAILS_ROOT, '/vendor/plugins/typo-sliding-posts/')
destination = File.join(RAILS_ROOT, '/public/')

puts "Copying Typo sliding posts files"
FileUtils.copy(File.join(source, 'javascripts/carousel.js'), File.join(destination, 'javascripts/carousel.js'))
FileUtils.copy(File.join(source, 'stylesheets/typo_sliding_posts.css'), File.join(destination, 'stylesheets/typo_sliding_posts.css'))
FileUtils.copy(File.join(source, 'images/carousel_previous.png'), File.join(destination, 'images/carousel_previous.png'))
FileUtils.copy(File.join(source, 'images/carousel_next.png'), File.join(destination, 'images/carousel_next.png'))
puts "Done"

