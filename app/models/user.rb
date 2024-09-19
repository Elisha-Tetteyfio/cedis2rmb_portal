class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role

  def admin?
    role.role_name == 'Admin'
  end

  def username_initials
    name_parts = self.username.split.take(2)
  
    initials = name_parts.map { |name| name[0].upcase }.join
    
    initials
  end
end
