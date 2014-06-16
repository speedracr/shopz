FactoryGirl.define do 
  factory :product do |p|
    p.name "hats"
    p.description "Much hat."
    p.price_in_cents 500
  end

end
