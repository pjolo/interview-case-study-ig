# Use Case: Impfregister

## Hintergrund

Im Rahmen eines neuen nationalen Impfregisters müssen Patientendaten, Laborresultate 
(z. B. serologische Tests nach Impfung) sowie die Impfungen selbst strukturiert 
erfasst werden können. Die Daten sollen mittels FHIR ausgetauscht werden.

## Fachliche Anforderungen

### 1. Patientendaten

Es muss möglich sein, folgende Angaben zu einer Patientin/einem Patienten zu erfassen:

| Angabe | Zwingend? |
|---|---|
| Name | Ja |
| Geburtsdatum | Ja |
| Geschlecht | Ja |
| Heimatort (Bürgerort) | Ja – relevant für eindeutige Identifikation im CH-Kontext |
| AHV-Nummer | Nein – sofern vorhanden zu erfassen |

### 2. Laborresultate

Im Zusammenhang mit Impfungen sollen auch Laborresultate (z. B. serologische Tests) 
erfasst werden können:

| Angabe | Zwingend? |
|---|---|
| Referenz auf Patient | Ja |
| Testresultat (z. B. Titer-Wert) | Ja |
| Zeitpunkt der Probeentnahme | Nein – kann bei nachträglicher Erfassung historischer Daten unbekannt sein |

### 3. Impfungen

Neu soll auch die eigentliche Impfung erfasst werden können:

| Angabe | Zwingend? |
|---|---|
| Referenz auf Patient | Ja |
| Verabreichter Impfstoff (kodiert, z. B. GTIN oder ATC) | Ja |
| Datum der Verabreichung | Ja |
| Dosisnummer (z. B. 1. oder 2. Dosis) | Nein |
| Verabreichende Person/Institution (Performer) | Nein |