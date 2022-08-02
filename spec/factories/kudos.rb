FactoryBot.define do
    factory :kudo do
      title { 'Lorem ipsum' }
      content { 'Test content' }
      receiver factory: employee
      giver factory: employee
    end
  end
