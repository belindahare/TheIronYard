class Patient < ActiveRecord::Base
 validates :first_name, presence: true
 validates :last_name, presence: true
 validates :dob, date: { before: Proc.new { Date.today }, message: 'must be before today' }, on: :create
 validates :description, presence: true
 validates :gender, presence: true
end
