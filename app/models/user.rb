class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :email_address, presence: true, uniqueness: true

  def full_name
    "#{last_name}, #{first_name}"
  end
end
