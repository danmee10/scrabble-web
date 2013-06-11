require 'spec_helper'

describe Word do
  describe 'validations' do
    it "is valid with a word" do
      expect(Word.new(:word => "hi")).to be_valid
    end

    it "is not valid without a word" do
      expect(Word.new).to_not be_valid
    end

    it "does not allow non-letters in words" do
      expect(Word.new(:word => "43m")).to_not be_valid
    end
  end

  describe '.compute_score' do
    it "scores hello as 8"
  end
end
