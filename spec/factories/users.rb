FactoryBot.define do

  factory :user do
    first_name              {"山田"}
    last_name              {"太郎"}
    frist_name_kana       {"ヤマダ"}
    last_name_kana        {"タロウ"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
  end

end