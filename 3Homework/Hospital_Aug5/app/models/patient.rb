class Patient < ActiveRecord::Base
  has_many :medications
  has_many :doctors, as: :doctorable
  belongs_to :hospital

  validates :name, presence: true
  validates :description, presence: true

#this is where the workflow goes!
  include Workflow
  workflow do
    state :waiting_room do
      event :checkup, transitions_to: :examined
      event :xray, transitions_to: :xrayed
      event :surgery, transitions_to: :recovery
      event :finance, transitions_to: :discharged
    end

    state :examined do
      event :xray, transitions_to: :xrayed
      event :surgery, transitions_to: :recovery
      event :finance, transitions_to: :discharged
    end

    state :xrayed do
      event :surgery, transitions_to: :recovery
      event :finance, transitions_to: :discharged
    end

    state :recovery do
      event :finance, transitions_to: :discharged
    end

    state :discharged 
  end

 validates :first_name, presence: true
 validates :last_name, presence: true
 validates :dob, date: { before: Proc.new { Date.today }, message: 'must be before today' }, on: :create
 validates :description, presence: true
 validates :gender, presence: true
end

