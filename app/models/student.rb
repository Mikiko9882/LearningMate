class Student < ApplicationRecord
  
  belongs_to :school
  belongs_to :grade
  belongs_to :student_class
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
end
