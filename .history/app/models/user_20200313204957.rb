class User < ApplicationRecord
  attr_accessor :login

  # 'getter'

  # def login
  # @login
  # end

  # 'setter'

  # def login=(str)
  # @login = str
  # end

  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
