class FundResource < JSONAPI::Resource
  attributes :description, :balance, :balance_cents
  has_one :user
end
