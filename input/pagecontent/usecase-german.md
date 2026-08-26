### Hintergrund

Im Rahmen eines neuen nationalen Impfregisters müssen Patientendaten, Laborresultate 
(z. B. serologische Tests nach Impfung) sowie die Impfungen selbst strukturiert 
erfasst werden können. Die Daten sollen mittels FHIR ausgetauscht werden.

### Fachliche Anforderungen

### Patientendaten

Es muss möglich sein, folgende Angaben zu einer Patientin/einem Patienten zu erfassen:

{:class="table table-bordered"}
| Angabe | Zwingend? |
|---|---|
| Name | Ja |
| Geburtsdatum | Ja |
| Geschlecht | Ja |
| Heimatort (placeOfOrigin) | Ja – relevant für eindeutige Identifikation im CH-Kontext |
| AHV-Nummer | Optional – Wenn vorhanden erfassen |

### Laborresultate

Im Zusammenhang mit Impfungen sollen auch Laborresultate (z. B. serologische Tests) 
erfasst werden können:

{:class="table table-bordered"}
| Angabe | Zwingend? |
|---|---|
| Referenz auf Patient | Nein |
| Test-Code  | Ja |
| Testresultat (z. B. Titer-Wert) | Ja |
| Die Person/Organisation, die die Laboranalyse durchführt| Nein |

### Impfungen

Das BAG möchte im Rahmen des Impfregisters neu auch erfassen können, 
welche Impfungen verabreicht wurden, inklusive sicherheitsrelevanter 
Informationen. Ziel ist es, im Nachhinein auswerten zu können, ob 
bestimmte Impfstoffe bei Personen mit bekannten Unverträglichkeiten 
oder relevanten Vorerkrankungen trotzdem verabreicht wurden (z. B. für 
Qualitätssicherung oder Pharmacovigilance).

Impfzentren und Arztpraxen übermitteln pro verabreichter Impfung 
folgende Angaben an das zentrale Register:

{:class="table table-bordered"}
| Angabe | Zwingend? |
|---|---|
| Referenz auf Patient | Ja |
| Der verabreichte Impfstoff (Handelsname oder Code, z. B. gemäss 
  Swissmedic-Zulassung)| Ja |
| Datum der Verabreichung | Ja |
| Dosisnummer (z. B. 1. oder 2. Dosis) | Ja |
| Verabreichende Person/Institution (Performer) | Ja |
| Bekannte Unverträglichkeit der Person gegenüber Impfstoffen oder deren Inhaltsstoffen (falls in der Krankengeschichte dokumentiert) | Ja |
| Bekannte Vorerkrankung, die eine besondere Vorsicht bei der Impfung erfordert (z. B. Immunschwäche, akute fieberhafte Erkrankung zum Zeitpunkt der Impfung) | Ja |
| Chargennummer des Impfstoffs | Nein |
| Notiz, falls die Impfung trotz bekannter Unverträglichkeit oder 
Vorerkrankung unter ärztlicher Aufsicht verabreicht wurde | Nein |