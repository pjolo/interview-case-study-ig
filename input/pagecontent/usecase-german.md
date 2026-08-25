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

Neu soll auch die eigentliche Impfung erfasst werden können:

{:class="table table-bordered"}
| Angabe | Zwingend? |
|---|---|
| Referenz auf Patient | Ja |
| Verabreichter Impfstoff (kodiert, z. B. GTIN oder ATC) | Ja |
| Datum der Verabreichung | Ja |
| Dosisnummer (z. B. 1. oder 2. Dosis) | Nein |
| Verabreichende Person/Institution (Performer) | Nein |