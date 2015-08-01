require 'faker'

#Create Posts
50.times do
  Post.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
  )
end

#Create Ads
count=0
25.times do 
  count+=1
  Advertisement.create!(
    title: "Advertisement #{count}",
    copy: Faker::Lorem.paragraph,
    price: rand(100)
  ) 
end

posts = Post.all

#Create Comments
50.times do
  Comment.create!(
    post: posts.sample,
    body: Faker::Lorem.paragraph
  )
end

puts "File seeded"
puts "#{Post.count} posts created"
puts "#{Advertisement.count} ads created"
puts "#{Comment.count} comments created"

