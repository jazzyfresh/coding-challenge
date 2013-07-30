require 'spec_helper'

describe "challenge" do
  describe "CRUD" do

    it "can be created" do
      challenge = Challenge.new(:title => "Creating challenge")

      expect(Challenge.create(:title => "Creating challenge"))
      expect(challenge.save).to be_true
    end

    it "wont be created without a title" do
      challenge = Challenge.new

      expect(challenge.save).to be_false
    end

    it "can be read" do
      challenge_id = Challenge.create(:title => "Reading challenge").id
      c = Challenge.last

      expect(Challenge.find(challenge_id)).to eql(c)
    end

    it "can be updated" do
      challenge = Challenge.create(:title => "Updating challenge")
      challenge.title = "Updated challenge"
      challenge.save

      expect(Challenge.last.title).to eql("Updated challenge")
    end

    it "can be destroyed" do
      challenge = Challenge.create(:title => "Gross challenge")

      expect(challenge.destroy).to be_true
    end

  end
end
