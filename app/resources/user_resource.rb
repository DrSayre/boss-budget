class UserResource < JSONAPI::Resource
  attributes :email
  has_many :sources
end
