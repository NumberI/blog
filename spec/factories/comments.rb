FactoryGirl.define do
  factory :comment do
    author "MM"
    sequence(:body) {|n| "comment body #{n}"}
  end
end