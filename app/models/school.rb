class School < ApplicationRecord
  enum role: [:admin, :student, :teacher, :school]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
  has_many :students
  has_many :teachers
end
