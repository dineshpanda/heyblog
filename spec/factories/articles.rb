FactoryBot.define do
  factory :article do
    title { "MyString" }
    content5 { "MyText" }
    published { false }
    publish_date { "2020-04-08" }
    publish_time { "2020-04-08 17:56:24" }
  end
end
