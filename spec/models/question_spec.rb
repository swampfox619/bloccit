require 'rails_helper'

RSpec.describe Question, type: :model do
    
    let(:question) { Question.new(title: "New Question Title", body: "New Question Body", resolved: false) }
    
    describe "attributes" do
        it "has title, resolved, and body attributes" do
            expect(question).to have_attributes(title: "New Question Title", body: "New Question Body", resolved: false)
        end
    end
end
