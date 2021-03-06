class User < ApplicationRecord
  enum role: [:admin, :student, :teacher, :school]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :courses

  scope :students, -> { where(role: student) } 
  scope :teachers, -> { where(role: teacher) } 
end
