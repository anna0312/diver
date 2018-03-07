SELECT d.family_name, d.specialty, p.last_name, a.start
FROM appointments a
  INNER JOIN doctors d
    on d.id = a.doctor_id
  INNER JOIN patients p
    on p.id = a.patient_id
