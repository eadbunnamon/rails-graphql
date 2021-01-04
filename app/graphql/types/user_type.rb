module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: true
    field :active, Boolean, null: true

    def active
      true
    end
  end
end