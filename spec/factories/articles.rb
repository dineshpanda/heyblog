FactoryBot.define do
  factory :article do
    title { "MyString" }
    content5 { "MyText" }
    published { false }
    publish_date { "2020-04-07" }
    publish_time { "2020-04-07 23:47:36" }
  end
end
