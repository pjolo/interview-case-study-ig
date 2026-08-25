Profile: InterviewCaseLabResult
Parent: $ch-vacd-laboratory-serology
Id: interview-case-lab-result
Title: "Interview Case Lab Result"
Description: "Profil zur Erfassung von Laborresultaten (z. B. serologische Tests) im Rahmen des Impfregisters."

* status 1..1 MS

* category 1..* MS

* code 1..1 MS

* subject 1..1 MS


* value[x] 0..1 MS
* value[x] only Quantity

* performer 1..* MS