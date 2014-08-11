class AddColumnsToCreateMedications < ActiveRecord::Migration
  def change
  	add_column :medications, :name, :string
  	add_column :medications, :description, :text
  	add_column :medications, :patient_id, :integer
  	
  end
end
