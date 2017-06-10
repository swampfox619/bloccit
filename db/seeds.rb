require 'random_data'

15.times do
    Topic.create!(
        name: RandomData.random_sentence,
        description: RandomData.random_paragraph)
    end
topics = Topic.all

50.times do
    Post.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
        )
end

50.times do
    Question.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
        )
end



Post.find_or_create_by(
    title: "Boomshackalacka",
    body: "Whamalamadingdong")

posts = Post.all

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

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
    