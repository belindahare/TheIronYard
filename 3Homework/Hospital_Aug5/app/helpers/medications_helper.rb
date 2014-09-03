module MedicationsHelper
  def patient_list(hospital, patient)
    x= ""
    hospital.patients.each do |patient|
      x+=(link_to "#{patient.first_name} #{patient.last_name}", hospital_patient_path(@hospital,patient))
      (link_to "Edit", edit_hospital_patient_path(hospital, patient))
      (link_to "Delete", hospital_patient_path(hospital, patient), method: :delete)
    end
    x.html_safe
  end
end
