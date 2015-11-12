require "spec_helper"


describe Comment do
  describe "association" do
    it { should belong_to :article }  
  end
  
  describe "valition" do
    it { should validate_length_of(:body).is_at_most(4000) }
  end
end