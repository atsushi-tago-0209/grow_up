FactoryBot.define do
  factory :post do
    title          {"研修"}
    place          {"練馬区"}
    sentence       {"新指導要領に即した指導"}
    schedule       {"2020-03-17"}
    time           {"11:00:00"}
    endtime        {"13:00:00"}
    capacity       {"20"}
    fee            {"1500"}
    belongings     {"ペン"}
    user
    category
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end

end