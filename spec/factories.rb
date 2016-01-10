FactoryGirl.define do  factory :phone do
    
  end

  factory :link do
    title "NEXT Rails"
    url "http://nextacademy.com"

    trait :invalid do
      title nil
    end
  end
end
