FactoryGirl.define do
   factory :comments do
     user
     body RandomData.random_sentence
   end
 end