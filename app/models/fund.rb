class Fund < ApplicationRecord
  belongs_to :user
  monetize :balance_cents
end
