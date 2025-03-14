class Patient < ApplicationRecord
  has_many :doctor_patients
  has_many :doctors, through: :doctor_patients

  def self.adults_alphabetical
    where('age > 18').order(:name).pluck(:name).join(', ')
  end
end