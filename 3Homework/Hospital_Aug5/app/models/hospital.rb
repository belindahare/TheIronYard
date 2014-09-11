class Hospital < ActiveRecord::Base
  has_many :patients
  has_many :doctors, as: :doctorable

  validates :name, presence: true
  validates :address, presence: true

  
  default_scope{ order("name") }

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
