module PatientHelper
  def medication_list
    x= ""
    @patient.medications.each do |medication|
      x+=(link_to "#{medication.name}", hospital_patient_medication_path(@hospital, @patient, medication)) +
      (link_to "Edit", edit_hospital_patient_medication_path(@hospital, @patient, medication)) +
      (link_to "Delete", hospital_patient_medication_path(@hospital, @patient, medication), method: :delete) +
      content_tag(:br)

    end
    x.html_safe
  end
  def patients_assigned_doctor(hospital, patient, doctor)
    x= ""
    patient.doctors.each do |doctor|
      if doctor.name 
        x+= doctor.name +
        (link_to "Delete Doctor", delete_doctor_hospital_patient_path(hospital, patient, doctor_id: doctor.id), method: :delete) +
        content_tag(:br)
      end
    end
    x.html_safe
  end
end
