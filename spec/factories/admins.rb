FactoryGirl.define do
  factory :admin do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
	  admin true
  end

end
