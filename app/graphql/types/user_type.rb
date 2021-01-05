module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :name, String, null: true
    field :status, String, null: true
  end
end