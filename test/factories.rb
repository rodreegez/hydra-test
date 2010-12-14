Factory.define :blog_post do |f|
  f.title 'A Blog Post'
  f.body 'This is the text of the blog post'
end
Factory.define :author do |f|
  f.name 'Frank Zappa'
end
Factory.define :tag do |f|
  f.topic 'science'
end
