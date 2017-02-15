class Admin < ActiveRecord::Base
  self.table_name = 'admins'
  attr_accessor :usuario, :password, :encrypted_password
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def email_required?
    false
  end

  def email_changed?
    false
  end

  validates_presence_of :usuario
end
