(deftemplate Diseases 
  (slot name) 
  (slot symptoms_1) 
  (slot symptoms_2) 
  (slot signs_1) 
  (slot signs_2))
 
(assert (Diseases 
(name Arthritis) 
(symptoms_1 Fatigue) 
(symptoms_2 Weakness) 
(signs_1 "Joint swelling") 
(signs_2 "Joint stiffness")))

(assert (Diseases
(name Osteoporosis)
(symptoms_1 "Limited mobility")
(symptoms_2 Weakness)
(signs_1 "Stooped posture")
(signs_2 "Back pain")))

 (assert (Diseases
(name Migraine)
(symptoms_1 "Mood changes")
(symptoms_2 "Blurred vision")
(signs_1 Nausea)
(signs_2 Aura)))

 (assert (Diseases
(name Asthma)
(symptoms_1 Anxiety)
(symptoms_2 "Difficulty breathing")
(signs_1 "Chest tightness")
(signs_2 Wheezing)))

(assert (Diseases
(name Anemia)
(symptoms_1 Headache)
(symptoms_2 "Cold hands and feet")
(signs_1 Weakness)
(signs_2 Fatigue)))

 (assert (Diseases 
(name Lupus) 
(symptoms_1 Fever) 
(symptoms_2 "Hair loss") 
(signs_1 Photosensitivity) 
(signs_2 Fatigue))) 

(defrule listDiseases
  (Diseases (name ?n) 
            (symptoms_1 ?sy1) 
            (symptoms_2 ?sy2)
            (signs_1 ?sg1) 
            (signs_2 ?sg2))
  =>
  (printout t "Name of the disease: " ?n crlf)
  (printout t "Symptom 1: " ?sy1 crlf)
  (printout t "Symptom 2: " ?sy2 crlf)
  (printout t "Sign 1: " ?sg1 crlf)
  (printout t "Sign 2: " ?sg2 crlf crlf)
)

(defrule delete
   =>
   (printout t "Name of disease: " crlf)
   (bind ?name (read))
(Diseases (name ?name))
=>
   (retract (Diseases (nombre ?name)))
)


