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
Was bedeutet die Kennzeichnung 'mustSupport = true' auf einem Element in einem FHIR-Profil?  

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

***Bitte schreiben Sie die Antwort in eine Word-Datei oder in einer Text-Datei. Der jeweilige Buchstabe der Antwort reicht.***

### Aufgaben 2 - Analyse eines FHIR-Implementierungsleitfadens
Lesen Sie den [Use Case](usecase-german.html) aufmerksam durch, insbesondere die 
Abschnitte **"Patientendaten"** und **"Laborresultate"**.

Analysieren Sie die im Implementierungsleitfaden enthaltenen [Profile](profiles.html) und prüfen Sie, ob diese die im Use Case beschriebenen fachlichen Anforderungen korrekt abbilden.  

**Vorgehen:**  

1.) Identifizieren Sie alle Abweichungen zwischen den fachlichen Anforderungen und den vorliegenden Profilen (Hinweis: Vergleich mit [CH Core Profile](https://fhir.ch/ig/ch-core/6.0.0/profiles.html)).  
2.) Beschreiben Sie für jede gefundene Abweichung, welche konkrete Anpassung Sie vornehmen würden.

***Bitte schreiben Sie die Antwort in eine Word-Datei oder in einer Text-Datei.***

### Aufgaben 3 - Profilwahl und FSH-Modellierung
Bestimmen Sie basierend auf den fachlichen Anforderungen von [3.3 Impfungen](https://pjolo.github.io/interview-case-study-ig/en/usecase-german.html#impfungen):

1. Welche FHIR-Ressource(n) würden Sie als Basis für die Abbildung der Anforderung wählen? Begründen Sie Ihre Wahl.  
2. Gibt es im Schweizer Kontext (CH Core) passende Profile, die Sie verwenden würden? Falls ja, welche? Falls nein, würden Sie ein eigenes Profil erstellen und worauf würden Sie es ableiten?  

***Bitte schreiben Sie die Antwort in eine Word-Datei oder in einer Text-Datei.***  

####  FSH-Modellierung (Bonus)
Erstellen Sie basierend auf der Aufgabe "Profilwahl und FSH-Modellierung" ein FHIR Shorthand (FSH)-Profil. Es muss nicht vollständig oder syntaktisch perfekt sein; es geht darum, dass Sie zeigen, wie Sie ein solches Profil strukturieren und modellieren würden.  

Als Hilfe für die Modellierung können Sie das [FHIR Cheat Sheet](https://devdays.com/wp-content/uploads/2023/09/Firely_FHIR_Cheat_Sheet.pdf) zu Hilfe nehmen und die Resource mithilfe des [FSH-Code Online-Tools](https://fshonline.fshschool.org/) erstellen und validieren.

**Validierung:**   
Damit die Validierung für CH-Core-Ressourcen funktioniert, müssen in den Einstellungen des Online-Tools die Dependencies 'ch.fhir.ig.ch-core#6.0.0' angegeben werden. Achten Sie zudem darauf, dass Sie als 'Parent'-Wert den korrekten Computable Name des jeweiligen Profils verwenden. 

***Bitte schreiben Sie die Antwort in eine Word-Datei oder in einer Text-Datei.*** 

<img src="config.jpg" alt="Use Case Diagramm" style="width:900px"/>           



