class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :role
  validates :email, uniqueness: true
  validates :username, uniqueness: true, length: {minimum: 5}

  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  before_create do
    self.key = 1234 if is_sale_retaceria?
  end

  def email_changed?
    false
  end

  def is_administrador?
    self.role_id==1
  end

  def is_sale_retaceria?
    self.role_id==2
  end
  def is_caja_retaceria?
    self.role_id==3
  end
  def is_sale_merceria?
    self.role_id==4
  end
  def is_caja_merceria?
    self.role_id==5
  end




end
