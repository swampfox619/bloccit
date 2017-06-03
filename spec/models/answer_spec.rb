require 'rails_helper'

RSpec.describe Answer, type: :model do
    
    let(:question)  { Question.new(title: "New Question Title", body: "New Question Body")}
    let(:answer) { Answer.new(body: 'Answer Body', question: question) }
  
    describe "attributes" do
        it "has a body attribute" do
        expect(answer).to have_attributes(body: "Answer Body")
        end
    end
end
