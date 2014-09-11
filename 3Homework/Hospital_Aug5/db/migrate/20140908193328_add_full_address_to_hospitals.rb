class AddFullAddressToHospitals < ActiveRecord::Migration
  def change
    add_column :hospitals, :address, :text
  end
end
