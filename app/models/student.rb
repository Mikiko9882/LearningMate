class Student < ApplicationRecord
  
  belongs_to :school
  belongs_to :grade
  belongs_to :student_class

  has_many :test_results, dependent: :destroy
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  def average_achievement_rate
    test_results.average(:achievement_rate)
  end
end
