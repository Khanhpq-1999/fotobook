class User < ApplicationRecord
  def active_for_authentication?
    super and self.active?
  end
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :photos, dependent: :destroy
  has_many :albums, dependent: :destroy

  def full_name
    first_name + " " + last_name
  end 

  def firsl_letter_full_name
    first_name.first.upcase + last_name.first.upcase
  end 

end
