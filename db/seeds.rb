require 'random_data'

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
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
    