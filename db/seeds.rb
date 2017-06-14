require 'random_data'
5.times do
   User.create!(
   name:     RandomData.random_name,
   email:    RandomData.random_email,
   password: RandomData.random_sentence
   )
end
users = User.all


15.times do
    Topic.create!(
        name: RandomData.random_sentence,
        description: RandomData.random_paragraph)
    end
topics = Topic.all


5.times do
    SponsoredPost.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: 10)
end
sponsored_posts = SponsoredPost.all


50.times do
    Post.create!(
        topic:  topics.sample,
        user:   users.sample,
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
        )
end
posts = Post.all

50.times do
    Question.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
        )
end


100.times do
    Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
        )
end

Comment.create!(
    post: Post.find_by(title: "Boomshackalacka"),
    body: "Boom!  I did it!"
    )
    
 admin = User.create!(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'helloworld',
   role:     'admin'
 )

 member = User.create!(
   name:     'Member User',
   email:    'member@example.com',
   password: 'helloworld'
 )

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{SponsoredPost.count} sponsored posts created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"