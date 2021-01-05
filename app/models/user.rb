class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, :confirmable


  before_validation :initial_status, on: :create

  validates :name, presence: true
  validates :email, presence: true
  validates :status, presence: true
  validates :status, inclusion: { in: ConstantValues::User::STATUSES }


  private
  def initial_status
    self.status = ConstantValues::User::INITIAL_STATUS
  end
end
