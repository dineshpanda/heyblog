FactoryBot.define do
  factory :comment do
    article_id { 1 }
    auto_removal_date { "2020-04-07" }
  end
end
