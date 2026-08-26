## Introduction
Willkommen zur Fallstudie im Rahmen des Bewerbungsprozesses.

Dieser Implementation Guide (IG) enthält Beispiel-Ressourcen, die im Rahmen dieser Aufgabe analysiert werden sollen.

### Aufgaben 1 - Wissensfrage

**Frage 1 - Implementation Guide**  
Was ist die Hauptfunktion eines FHIR Implementation Guide (IG)?  

A.) Er ersetzt den FHIR-Standard vollständig durch eigene Regeln.  
B.) Er definiert, wie FHIR-Ressourcen für einen bestimmten Anwendungsfall/Kontext eingeschränkt und verwendet werden sollen.  
C.) Er ist ausschliesslich ein Software-Tool zur Validierung.  
D.) Er dient nur der Dokumentation von Terminologien.  

**Frage 2 - Verknüpfung zwischen Ressourcen**  
Eine Observation-Ressource enthält ein Element subject, das auf eine Patient-Ressource verweist. Wie nennt man diese Art der Verknüpfung in FHIR?  

A.) Extension  
B.) Reference  
C.) Binding  
D.) Profile  

**Frage 3 - Profiling/Kardinalität**  
Ein FHIR-Profil leitet sich von einer Basisressource ab. In der Basisressource ist ein Element mit der Kardinalität 0..1 definiert. Welche der folgenden Änderungen im abgeleiteten Profil ist laut FHIR-Standard zulässig?  

A.) Erhaltung der Kardinalität 0..1 bei gleichzeitiger Änderung des Datentyps in einen inkompatiblen Typ.  
B.) Änderung auf 0..2  
C.) Einschränkung auf 1..1  
D.) Erweiterung auf 1..∗  

**Frage 4 - Binding Strength**  
In einer Basisressource ist die Binding Strength eines Codes als required definiert. Was muss ein Profilentwickler bei der weiteren Einschränkung dieses Elements beachten?  

A.) Die Bindungsstärke darf im Profil nicht auf extensible oder preferred herabgestuft werden.  
B.) Es darf kein eigenes Value Set gebunden werden; es muss immer das Standard-Value-Set genutzt werden.  
C.) Das Value Set muss exakt dieselbe Anzahl an Codes enthalten wie das der Basisressource.  
D.) Die Bindungsstärke muss im Profil zwingend auf example gesetzt werden.  

**Frage 5 - MustSupport**  
Was bedeutet die Kennzeichnung mustSupport = true auf einem Element in einem FHIR-Profil?  

A.) Das Element muss zwingend einen Wert enthalten (Kardinalität mindestens 1..1).  
B.) Implementierende Systeme müssen in der Lage sein, das Element zu verarbeiten (zu lesen/speichern/anzuzeigen), auch wenn es optional befüllt ist.  
C.) Das Element darf nur von zertifizierten Systemen verwendet werden.  
D.) Das Element wird automatisch in der Snapshot-Ansicht ausgeblendet.  

**Frage 6 – Slicing**  
Wozu dient "Slicing" in einem FHIR-Profil?  

A.) Um eine Ressource in mehrere kleinere Ressourcen aufzuteilen.  
B.) Um innerhalb eines repetierbaren Elements (z. B. Observation.component) unterschiedliche, klar identifizierbare Ausprägungen einzeln zu definieren und einzuschränken.  
C.) Um ein Element vollständig aus dem Profil zu entfernen.  
D.) Um mehrere FHIR-Server miteinander zu synchronisieren.  

***Bitte schreiben Sie die Antwort in eine Word-Datei oder in einer Text-Datei. Den jeweiligen Buchstaben der Antwort reicht.***

### Aufgaben 2 - Analyse eines FHIR-Implementierungsleitfadens
Lesen Sie den [Use Case](usecase-german.html) aufmerksam durch, insbesondere die 
Abschnitte **"Patientendaten"** und **"Laborresultate"**.

Analysieren Sie die im Implementierungsleitfaden enthaltenen [Profile](profiles.html). und prüfen Sie, ob diese die im Use Case beschriebenen fachlichen Anforderungen korrekt abbilden. Identifizieren Sie die Fehler (Hinweis: Vergleich mit [CH Core Profile](https://fhir.ch/ig/ch-core/6.0.0/profiles.html)) und beschreiben Sie, welche Anpassungen Sie machen würden.

***Bitte schreiben Sie die Antwort in eine Word-Datei oder in einer Text-Datei.***

`InterviewCase-Patient` und `InterviewCase-LabResult`...
Prüfen Sie die im IG enthaltene Patient-Ressource. Identifizieren Sie den strukturellen Fehler (Hinweis: Vergleich mit CH Core) und beschreiben Sie, welche Ressource/welches Profil korrekt verwendet werden müsste und warum.

**2. Terminologie (SNOMED CT)**
Ordnen Sie dem vorgegebenen Begriff den korrekten SNOMED-CT-Term zu und wenden Sie dabei die mitgelieferte Übersetzungsrichtlinie an.

**3. Ballot-Kommentar**
Formulieren Sie einen Kommentar, wie Sie den gefundenen Fehler im Rahmen eines Ballot-Kommentarverfahrens einreichen würden (Referenz/Feld, Problembeschreibung, Verbesserungsvorschlag).

Bitte erfassen Sie Ihre Antworten in einer Text- oder Word-Datei.

### Aufgaben 3 - Profilwahl und FSH-Modellierung
Bestimmen Sie basierend auf den fachlichen Anforderung von [3.3 Impfungen](https://pjolo.github.io/interview-case-study-ig/en/usecase-german.html#impfungen):

1. Welche FHIR-Ressource würden Sie als Basis für die Abbildung einer Impfung wählen? Begründen Sie Ihre Wahl.  
2. Gibt es im Schweizer Kontext (CH Core / CH EPR) ein passendes Profil, das Sie verwenden würden? Falls ja, welches? Falls nein, würden Sie ein eigenes Profil erstellen – und worauf würden Sie es ableiten?  

####  FSH-Modellierung (Bonus)
Erstellen Sie basierend der Aufgabe "Profilwahl und FSH-Modellierung" ein FHIR Shorthand (FSH)-Profil. Es muss nicht vollständig oder syntaktisch perfekt sein; es geht darum, dass Sie zeigen, wie Sie ein solches Profil strukturieren und modellieren würden. Zur vlaidierung

<div markdown="1" class="stu-note">

[Changelog](changelog.html) with significant changes, open and closed issues.

</div>

**Download**: You can download this implementation guide in the [NPM package](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) format from [here](package.tgz).

### IP Statements
This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

{% include ip-statements.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependency Table

{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}
