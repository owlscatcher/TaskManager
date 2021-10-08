FactoryBot.define do
  factory :task do
    name
    description
    author { create :manager }
    assignee { create :developer }
    state
    expired_at
  end
end
