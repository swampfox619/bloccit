 FactoryGirl.define do
     myArray = [-1, 1]
   factory :votes do
     update_vote(myArray.sample)
   end
 end