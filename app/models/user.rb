class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :last_sign_in_at, :name, :role, :active, :email, :password, :encrypted_password, :password_confirmation


  ROLES = %w[admin usuario]


   def self.search(search)

    if search
      where('name LIKE ?', "#{search}%")
    else
      scoped
    end
  end

  def active_for_authentication?
    active
  end

  def inactive_message
    "Desculpe, sua conta foi desativada."
  end

#   def as_json(options={})
#   super(:only => [:last_sign_in_at])
# end



end
