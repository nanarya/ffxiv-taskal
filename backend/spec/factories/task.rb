FactoryBot.define do
  factory :task do
    title { 'title' }
    priority { :normal }
    progress { :todo }
    repeat { :none }
    association :player
  end
end
