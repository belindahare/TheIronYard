class Hospital < ActiveRecord::Base
  has_many :patients
  has_many :doctors, as: :doctorable


  validates :description, presence: true

  default_scope{ order("description") }
end
