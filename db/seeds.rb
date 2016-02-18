require 'json'

posts = JSON.parse(Rails.root.join('db', 'data', 'posts.json').read)

posts.each do |post|
  Post.create(title: post["title"], body: post["post"])
end
