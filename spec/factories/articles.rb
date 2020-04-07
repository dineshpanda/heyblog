FactoryBot.define do
  factory :article do
    title { "MyString" }
    content5 { "MyText" }
    published { false }
    publish_date { "2020-04-08" }
    publish_time { "2020-04-08 01:00:21" }
  end
end
