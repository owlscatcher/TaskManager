FactoryBot.define do
  sequence :string, aliases: [:name, :description, :state, :first_name, :last_name, :password, :avatar] do |n|
    "string#{n}"
  end
  sequence(:email) { |n| "person#{n}@mail.com" }
  sequence(:expired_at) { |n| (Time.now + n.day).to_date }
end
