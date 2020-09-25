class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  validates :patient_id, :doctor_id, :date, :condition, presence: true

end
