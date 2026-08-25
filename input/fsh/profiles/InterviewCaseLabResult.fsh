Profile: InterviewCaseLabResult
Parent: $ch-vacd-laboratory-serology
Id: interview-case-lab-result
Title: "Interview Case Lab Result"
Description: "Profil zur Erfassung von Laborresultaten (z. B. serologische Tests) im Rahmen des Impfregisters."

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)

* category 1..* MS

* code 1..1 MS

* subject 1..1 MS
* subject only Reference(CHIgPatient)

* effective[x] 1..1 MS
* effective[x] only dateTime

* value[x] 1..1 MS
* value[x] only Quantity

* performer 0..* MS