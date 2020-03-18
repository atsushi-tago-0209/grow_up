FactoryBot.define do

  factory :user do
    first_name              {"山田"}
    last_name              {"太郎"}
    first_name_kana       {"ヤマダ"}
    last_name_kana        {"タロウ"}
    email                 {"kkk@gmail.com"}
    password              {"000000"}
    password_confirmation {"000000"}
    sequence(:email) {Faker::Internet.email}
  end

end